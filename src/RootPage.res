@react.component
let make = () => {
  <div>
    {React.string("Welcome home!")}
    <br />
    <br />
    <RelayRouter.Link to_={Routes.Page1.Route.makeLink()}>
      {React.string("if you click here, you'll go to page1 and come back here automatically")}
    </RelayRouter.Link>
    <br />
    <br />
    {React.string(
      "but if you copy paste http://localhost:5173/page1 in the URL bar of your browser, you'll go to page1 and the URL will be set back to home page but the content of page1 wil remain.",
    )}
  </div>
}
