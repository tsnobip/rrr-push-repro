let renderer = Routes.FourOhFour.Route.makeRenderer(
  ~prepare=_ => {
    ()
  },
  ~render=_ => {
    <div> {React.string("404")} </div>
  },
)
