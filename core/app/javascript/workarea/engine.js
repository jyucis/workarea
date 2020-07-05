import { definitionsFromContext } from "stimulus/webpack-helpers"

/**
 * An Engine in the Workarea JS fills a similar purpose to engines in
 * Ruby code. Engines are responsible for using the `require.context`
 * from each gem's JavaScript code to require in all controllers, as
 * well as routes, and to load a handle to the current app in each
 * controller for config access.
 */
export default class Engine {
  constructor(app = null) {
    this.app = app
    this.namespace = null
    this.context = null
    this.initialize()
  }

  /**
   * Override to provide default configuration for this engine.
   */
  configure(_config) {}

  /**
   * Override to run code when the engine is instantiated.
   */
  initialize() {}

  /**
   * JsRoutes for this engine
   */
  get routes() {
    return this.require("./routes.js.erb")
  }

  /**
   * A require() function built from the local context.
   */
  get require() {
    if (!this.namespace) {
      throw new Error("Engine must provide namespace")
    }

    return this.context(this.namespace, true)
  }

  /**
   * All controllers in the engine namespace, with a handle to the
   * current app.
   */
  get controllers() {
    if (!this.context) {
      throw new Error("Engine must provide require.context")
    }

    return definitionsFromContext(
        this.require.context('controllers', true, /_controller\.js$/)
    ).map(Controller => {
      const value = this.app

      Object.defineProperty(Controller.prototype, 'app', { value })

      return Controller
    })
  }
}
