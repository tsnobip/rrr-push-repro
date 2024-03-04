@val @scope("JSON") external stringify: {..} => string = "stringify"

let preparedAssetsMap: Dict.t<bool> = Dict.make()

/**
   A standard fetch that sends our operation and variables to the
   GraphQL server, and then decodes and returns the response.
*/
let fetchFunction = async (operation, variables, _cacheConfig, _) => {
  open Fetch
  let headers = {
    "content-type": "application/json",
    "accept": "application/json",
  }->Headers.fromObject
  let resp = await fetch(
    "/graphql",
    {
      method: #POST,
      body: {
        "query": operation.RescriptRelay.Network.text,
        "variables": variables,
      }
      ->stringify
      ->Body.string,
      headers,
    },
  )
  if Response.ok(resp) {
    await Response.json(resp)
  } else {
    await Promise.reject(
      Error.make(`Request failed: ${Response.statusText(resp)}`)->Error.toException,
    )
  }
}

let environment = RescriptRelay.Environment.make(
  ~network=RescriptRelay.Network.makePromiseBased(~fetchFunction),
  ~store=RescriptRelay.Store.make(
    ~source=RescriptRelay.RecordSource.make(),
    ~gcReleaseBufferSize=10, // This sets the query cache size to 10
  ),
)
