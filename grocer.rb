def consolidate_cart(cart)
  hash = {}

  cart.each do |items, hashes|
    items.each do |item, data|
      if hash[item].nil?
        hash[item] = data
      end
      hash[item][:count].nil? ? hash[item][:count] = 1 : hash[item][:count] += 1
    end
  end
  hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end




[
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

{
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 2},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}
