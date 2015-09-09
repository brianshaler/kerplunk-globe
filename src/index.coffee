_ = require "lodash"

module.exports = (System) ->
  globeHandler = (req, res, next) ->
    mongoose = System.getMongoose 'public'
    DashboardStream = mongoose.model 'DashboardStream'
    console.log "globe"
    DashboardStream.findById req.params.id, (err, stream) ->
      console.error err if err
      throw err if err
      return console.log 'NOT FOUND', req.params.id, next() unless stream

      res.render 'globe',
        stream: stream
        layout: 'kerplunk-globe:layout'

  routes:
    admin:
      '/admin/globe/:id': 'globe'

  handlers:
    globe: globeHandler

  globals:
    public:
      streamTypes:
        'kerplunk-globe:iframe':
          description: 'Globe (geo-tagged)'
          perUser: 1

  init: (next) -> next()
