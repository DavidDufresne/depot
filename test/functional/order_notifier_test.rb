require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal 'Fake Pragmatic Order Confirmation', mail.subject
    assert_equal ["dave@wendys.org"], mail.to
    assert_equal ["dufresnedavidr@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Fake Order Shipped", mail.subject
    assert_equal ["dave@wendys.org"], mail.to
    assert_equal ["dufresnedavidr@gmail.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded
  end

end

