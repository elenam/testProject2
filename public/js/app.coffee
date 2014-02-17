###
Created by mart2967 on 1/30/14.
###

class AppRouter extends Backbone.Router
  routes:
    "": "index"
    "section/:id": "singleSection"

  index: ->
    sectionList = new window.SectionCollection()
    sectionList.fetch success: ->
      $('#content').html new window.SectionCollectionView(collection: sectionList).$el
      $('#bs-example-navbar-collapse-1').html new window.NavbarView(collection: sectionList).$el
      return

  singleSection: (id) ->
    console.log 'display a single section'
    section = new window.Section({_id: id})
    section.fetch success: ->
      $('#content').html new window.SectionView(model: section).el
    return

app = new AppRouter()
Backbone.history.start pushState: true

