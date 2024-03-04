@react.component
let make = () => {
  let {push} = RelayRouter.Utils.useRouter()

  React.useEffect0(() => {
    push(Routes.Root.Route.makeLink())
    None
  })

  <div> {React.string("This is page1")} </div>
}
