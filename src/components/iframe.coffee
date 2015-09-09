_ = require 'lodash'
React = require 'react'

{DOM} = React

module.exports = React.createFactory React.createClass
  getInitialState: ->
    height: '100%'

  componentDidMount: ->
    window.addEventListener 'resize', @onResize
    @onResize()

  componentWillUnmount: ->
    window.removeEventListener 'resize', @onResize

  onResize: ->
    @setState
      height: window.innerHeight

  render: ->
    DOM.iframe
      src: "/admin/globe/#{@props.stream._id}"
      width: '100%'
      height: @state.height
      style:
        width: '100%'
        height: @state.height
        margin: '0'
        padding: '0'
        border: 'none'
