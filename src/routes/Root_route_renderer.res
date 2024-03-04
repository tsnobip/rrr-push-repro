let renderer = Routes.Root.Route.makeRenderer(
  ~prepare=_ => {
    ()
  },
  ~render=_ => {
    <RootPage />
  },
)
