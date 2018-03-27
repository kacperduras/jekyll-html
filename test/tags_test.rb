require 'minitest/autorun'

require 'jekyll-html'

class TagsTest < Minitest::Test

  def setup
    # nothing
  end

  def teardown
    # nothing
  end

  def test_start_tag
    tag = Jekyll::HTML.generate_start_tag('div')
    assert_equal('<div>', tag)

    tag_with_params = Jekyll::HTML.generate_start_tag('div class=test_class')
    assert_equal('<div class="test class">', tag_with_params)
  end

  def test_end_tag
    tag = Jekyll::HTML.generate_end_tag('div')
    assert_equal('</div>', tag)

    tag_with_params = Jekyll::HTML.generate_end_tag('div class=test_class')
    assert_equal('</div>', tag_with_params)
  end

end
