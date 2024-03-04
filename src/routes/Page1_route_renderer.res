let renderer = Routes.Page1.Route.makeRenderer(
  ~prepare=_ => {
    ()
  },
  ~render=_ => {
    <Page1 />
  },
)
