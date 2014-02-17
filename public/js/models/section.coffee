  class window.Section extends Backbone.Model
    urlRoot: '/api/section'
    idAttribute: '_id' #conforming to mongodb id syntax
    initialize: ->
      console.log 'Initializing a Section'

    defaults:
      title: 'Title'
      link: '#'
      body: 'Hello world'
      category: 'default'
      htmlId: '#'
