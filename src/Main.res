%%raw("import './index.css'")

switch ReactDOM.querySelector("#root") {
| Some(domElement) =>
  ReactDOM.Client.createRoot(domElement)->ReactDOM.Client.Root.render(
    <React.StrictMode>
      <RelayRouter.Provider value={Router.routerContext}>
        <React.Suspense fallback={React.string("Loading...")}>
          <RescriptReactErrorBoundary fallback={_ => React.string("Error!")}>
            <App />
          </RescriptReactErrorBoundary>
        </React.Suspense>
      </RelayRouter.Provider>
    </React.StrictMode>,
  )
| None => ()
}
