# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Note.destroy_all

Note.create([
	{title: 'Im the first note', body: StickyNote.new(content: 'Notes are the best')},
	{title: 'Im the second note', body: StickyNote.new(content: 'Notes are the ayt')},
	{title: 'Im the third note', body: StickyNote.new(content: 'Notes are the cutest')}
])