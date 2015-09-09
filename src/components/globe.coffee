_ = require 'lodash'
React = require 'react'

{DOM} = React

module.exports = React.createFactory React.createClass
  componentDidMount: ->
    window.globe = new KerplunkGlobe '#globe', @props.stream._id

  render: ->
    DOM.div null,
      DOM.link
        rel: 'stylesheet'
        type: 'text/css'
        href: '/plugins/kerplunk-globe/css/globe.css'
      DOM.div
        style:
          position: 'absolute'
          left: '-300px'
      ,
        DOM.div
          id: 'globe'
          className: 'globe'
        DOM.div
          id: 'globe-overlay'
          className: 'globe-overlay'
