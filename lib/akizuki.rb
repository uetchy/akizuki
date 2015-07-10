require "akizuki/version"

module Akizuki
  # Your code goes here...
end

Akizuki.configure do |ak|
  ak.email ''
  ak.password ''
end

akizuki = Akizuki.new
akizuki.search 'Arduino'

# GET http://akizukidenshi.com/catalog/g/g{{product_id}}/
# product_id: P-00038

# Quick insert
# POST http://akizukidenshi.com/catalog/cart/cart.aspx
# class1: P
# goods_cd: 00038
# inp_qty: 1

# Update cart
# POST http://akizukidenshi.com/catalog/cart/cart.aspx
# rowcart{{item_number}}: 11775247
# rowgoods{{item_number}}: P-03471
# qty{{item_number}}: 1

# Add cart
# POST http://akizukidenshi.com/catalog/cart/cart.aspx
# goods: P-03471
# P-03471_qty: 1

# GET http://akizukidenshi.com/catalog/goods/search.aspx
# search: x
# keyword: 抵抗

# GET http://akizukidenshi.com/catalog/customer/logout.aspx
