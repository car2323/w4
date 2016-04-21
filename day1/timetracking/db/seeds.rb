# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


row1=Project.create(name: "Ironhack1", description:"Ironhack1 is a...")
row2=Project.create(name: "Time Tracking app 1")
row3=Project.create(name: "Recipes1", description: "1track my favorite recipes")

row4=Project.create(name: "Ironhack2", description:"Ironhack2 is a...")
row5=Project.create(name: "Time Tracking app 2")
row6=Project.create(name: "Recipes2", description: "2track my favorite recipes")

row7=Project.create(name: "Ironhack3", description:"Ironhack3 is a...")
row8=Project.create(name: "Time Tracking app 3")
row9=Project.create(name: "Recipes3", description: "3track my favorite recipes")

TimeEntry.create(project: row1, hours:4, minutes:30, comment:"ninguno 1er project", date:Time.now - 23.hours)
TimeEntry.create(project: row2, hours:1, minutes:0, comment:"ninguno 2do project", date:Time.now - 6.hours)
TimeEntry.create(project: row3, hours:4, minutes:30, comment:"ninguno 3er project", date:Time.now - 12.hours)
TimeEntry.create(project: row1, hours:3, minutes:15, comment:"ninguno 1er project 2", date:Time.now - 1.hours)
TimeEntry.create(project: row1, hours:6, minutes:45, comment:"ninguno 1er project 3", date:Time.now - 12.hours)
