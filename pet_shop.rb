def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end


def pets_sold (pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  stock_count = 0
  stock_count = pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
total = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      total.push(pet)
    end
  end
  return total
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
nil
end

def add_pet_to_stock(pet_shop, new_pet)
  stock_count = 0
  pet_shop[:pets].push(new_pet)
  stock_count = pet_shop[:pets].count
end

def customer_cash(customers)
return customers[:cash]
end
#why this code doesn't work:
# def customer_cash(customers, index)
#   return customers[index][:cash]
# end

def remove_customer_cash(customers, amount)
  customers[:cash] -= amount
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
  return customers[:pets].length
end


# def pets_by_breed(pet_shop, breed)
#   total = 0
#   for pet in pet_shop
#     if breed == pet[1][:breed]
#       total +=1
#   end
#   return total
# end


# def find_pet_by_name(pet_shop, name)
#   for pet in pet_shop_name
#     if pet[:pets][:name] == name
#   end
#
# end
