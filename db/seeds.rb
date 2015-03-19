# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Arthur Aardvark', city: cities.first)


ProjectTemplate.create( name: "Single Patch", example_thumb_url: "dummythumb.png", description: "Make a single patch and use it in a project of your choosing")
ProjectTemplate.create( name: "Doll", example_thumb_url: "dummythumb.png", description: "Make a doll sized quilt")
ProjectTemplate.create( name: "Queen Sized Quilt", example_thumb_url: "dummythumb.png", description: "Make a queen sized quilt")

Quilt.create( name: "Default", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 1, yardage: "fat quarter", svg:)
Quilt.create( name: "Red", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 2, yardage: "1", svg:)
Quilt.create( name: "Goat", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 3, yardage: "3", svg:)
Quilt.create( name: "Secret", seam_allowance: 0.25, public: false, preview_thumb_url: "dummythumb.png", project_template_id: 1, yardage: "fat quarter", svg:)
