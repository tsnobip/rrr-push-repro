
open RelayRouter__Internal__DeclarationsSupport

external unsafe_toPrepareProps: 'any => prepareProps = "%identity"

let loadedRouteRenderers: Belt.HashMap.String.t<loadedRouteRenderer> = Belt.HashMap.String.make(
  ~hintSize=3,
)

let make = (~prepareDisposeTimeout=5 * 60 * 1000): array<RelayRouter.Types.route> => {
  let {prepareRoute, getPrepared} = makePrepareAssets(~loadedRouteRenderers, ~prepareDisposeTimeout)

  [
      {
    let routeName = "Root"
    let loadRouteRenderer = () => (() => Js.import(Root_route_renderer.renderer))->Obj.magic->doLoadRouteRenderer(~routeName, ~loadedRouteRenderers)
    let makePrepareProps = (. 
    ~environment: RescriptRelay.Environment.t,
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t,
    ~location: RelayRouter.History.location,
  ): prepareProps => {
    ignore(pathParams)
    ignore(queryParams)
    let prepareProps: Route__Root_route.Internal.prepareProps =   {
      environment: environment,
  
      location: location,
    }
    prepareProps->unsafe_toPrepareProps
  }
  
    {
      path: "/",
      name: routeName,
      chunk: "Root_route_renderer",
      loadRouteRenderer,
      preloadCode: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
      ) => preloadCode(
        ~loadedRouteRenderers,
        ~routeName,
        ~loadRouteRenderer,
        ~environment,
        ~location,
        ~makePrepareProps,
        ~pathParams,
        ~queryParams,
      ),
      prepare: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
        ~intent: RelayRouter.Types.prepareIntent,
      ) => prepareRoute(
        ~environment,
        ~pathParams,
        ~queryParams,
        ~location,
        ~getPrepared,
        ~loadRouteRenderer,
        ~makePrepareProps,
        ~makeRouteKey=(
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t
  ): string => {
    ignore(pathParams)
    ignore(queryParams)
  
    "Root:"
  
  
  }
  
  ,
        ~routeName,
        ~intent
      ),
      children: [],
    }
  },
  {
    let routeName = "Page1"
    let loadRouteRenderer = () => (() => Js.import(Page1_route_renderer.renderer))->Obj.magic->doLoadRouteRenderer(~routeName, ~loadedRouteRenderers)
    let makePrepareProps = (. 
    ~environment: RescriptRelay.Environment.t,
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t,
    ~location: RelayRouter.History.location,
  ): prepareProps => {
    ignore(pathParams)
    ignore(queryParams)
    let prepareProps: Route__Page1_route.Internal.prepareProps =   {
      environment: environment,
  
      location: location,
    }
    prepareProps->unsafe_toPrepareProps
  }
  
    {
      path: "/page1",
      name: routeName,
      chunk: "Page1_route_renderer",
      loadRouteRenderer,
      preloadCode: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
      ) => preloadCode(
        ~loadedRouteRenderers,
        ~routeName,
        ~loadRouteRenderer,
        ~environment,
        ~location,
        ~makePrepareProps,
        ~pathParams,
        ~queryParams,
      ),
      prepare: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
        ~intent: RelayRouter.Types.prepareIntent,
      ) => prepareRoute(
        ~environment,
        ~pathParams,
        ~queryParams,
        ~location,
        ~getPrepared,
        ~loadRouteRenderer,
        ~makePrepareProps,
        ~makeRouteKey=(
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t
  ): string => {
    ignore(pathParams)
    ignore(queryParams)
  
    "Page1:"
  
  
  }
  
  ,
        ~routeName,
        ~intent
      ),
      children: [],
    }
  },
  {
    let routeName = "FourOhFour"
    let loadRouteRenderer = () => (() => Js.import(FourOhFour_route_renderer.renderer))->Obj.magic->doLoadRouteRenderer(~routeName, ~loadedRouteRenderers)
    let makePrepareProps = (. 
    ~environment: RescriptRelay.Environment.t,
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t,
    ~location: RelayRouter.History.location,
  ): prepareProps => {
    ignore(pathParams)
    ignore(queryParams)
    let prepareProps: Route__FourOhFour_route.Internal.prepareProps =   {
      environment: environment,
  
      location: location,
    }
    prepareProps->unsafe_toPrepareProps
  }
  
    {
      path: "*",
      name: routeName,
      chunk: "FourOhFour_route_renderer",
      loadRouteRenderer,
      preloadCode: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
      ) => preloadCode(
        ~loadedRouteRenderers,
        ~routeName,
        ~loadRouteRenderer,
        ~environment,
        ~location,
        ~makePrepareProps,
        ~pathParams,
        ~queryParams,
      ),
      prepare: (
        ~environment: RescriptRelay.Environment.t,
        ~pathParams: Js.Dict.t<string>,
        ~queryParams: RelayRouter.Bindings.QueryParams.t,
        ~location: RelayRouter.History.location,
        ~intent: RelayRouter.Types.prepareIntent,
      ) => prepareRoute(
        ~environment,
        ~pathParams,
        ~queryParams,
        ~location,
        ~getPrepared,
        ~loadRouteRenderer,
        ~makePrepareProps,
        ~makeRouteKey=(
    ~pathParams: Js.Dict.t<string>,
    ~queryParams: RelayRouter.Bindings.QueryParams.t
  ): string => {
    ignore(pathParams)
    ignore(queryParams)
  
    "FourOhFour:"
  
  
  }
  
  ,
        ~routeName,
        ~intent
      ),
      children: [],
    }
  }
  ]
}