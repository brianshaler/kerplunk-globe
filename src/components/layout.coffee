_ = require 'lodash'
React = require 'react'

{DOM} = React

module.exports = React.createFactory React.createClass
  render: ->
    DOM.div null,
      @props.getComponent(@props.contentComponent) _.extend {}, @props

module.exports.scripts = [
  '/plugins/kerplunk-globe/js/jquery-2.1.4.min.js'
  '/plugins/kerplunk-globe/js/d3.v2.js'
  '/plugins/kerplunk-globe/js/globe.js'
]

# ugh.
module.exports
