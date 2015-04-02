# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150401060738) do

  create_table "block_templates", force: :cascade do |t|
    t.string   "name"
    t.string   "block_svg_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "project_templates", force: :cascade do |t|
    t.string   "name"
    t.string   "example_thumb_url"
    t.text     "description"
    t.string   "directions_pdf_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "project_layout_svg"
    t.integer  "blocks_across"
    t.integer  "blocks_down"
  end

  create_table "quilts", force: :cascade do |t|
    t.string   "name"
    t.decimal  "seam_allowance",      precision: 3, scale: 2
    t.boolean  "public"
    t.string   "preview_thumb_url",                           default: "flowerpatch_logo.png"
    t.string   "yardage"
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
    t.text     "svg"
    t.boolean  "in_progress"
    t.integer  "featured_priority"
    t.integer  "project_template_id"
  end

end
