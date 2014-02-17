mongoose = require 'mongoose'
Schema = mongoose.Schema


SectionSchema = new Schema(
  title: String
  link: String
  body: String
  category: String
  htmlId: String
)

Section = mongoose.model 'Section', SectionSchema

module.exports =
  Section : Section

