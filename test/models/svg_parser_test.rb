require 'test_helper'

class SvgParserTest < ActiveSupport::TestCase

  def open_file(file)
    f = File.open("#{Rails.root}/app/assets/blocks/#{file}.svg")
    @svg_parser = SvgParser.new(f.read)
    f.close
  end

  def get_area_hash
    @area_hash = @svg_parser.surface_area_for_cheater_block_royalties(1)
  end

  # these tests are less about checking the method than about checking the individual files.
  # the idea is, our blocks are all 9" x 9"
  # so the total area with a seam allowance of 0 should be approx. 81"
  test "check test1.svg total area" do
    open_file("test1")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test2.svg total area" do
    open_file("test2")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test3.svg total area" do
    open_file("test3")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test4.svg total area" do
    open_file("test4")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test5.svg total area" do
    open_file("test5")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test6.svg total area" do
    open_file("test6")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test7.svg total area" do
    open_file("test7")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test8.svg total area" do
    open_file("test8")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test9.svg total area" do
    open_file("test9")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test10.svg total area" do
    open_file("test10")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test11.svg total area" do
    open_file("test11")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test12.svg total area" do
    open_file("test12")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test13.svg total area" do
    open_file("test13")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test14.svg total area" do
    open_file("test14")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test15.svg total area" do
    open_file("test15")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test16.svg total area" do
    open_file("test16")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test17.svg total area" do
    open_file("test17")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end

  test "check test18.svg total area" do
    open_file("test18")
    total_area = @svg_parser.total_area(get_area_hash)
    assert_in_delta 81, total_area, 0.55
  end
end
