'use strict'

React                = require 'react'
ExampleApp           = require '../ExampleApp/ExampleApp.cjsx'
Router               = require '../Router/Router.cjsx'
ManagePhasesExamples = require '../ManagePhasesExamples/ManagePhasesExamples.cjsx'
PhaseRowExamples     = require '../PhaseRowExamples/PhaseRowExamples.cjsx'

{ Router, Route, Link, IndexRoute, browserHistory } = require 'react-router'

component = ->
  <Router history={browserHistory}>
    <Route path="/" component={ExampleApp}>
      <IndexRoute component={ManagePhasesExamples}/>

      <Route path="PhaseRowExamples" component={PhaseRowExamples} />
    </Route>
  </Router>

module.exports = component