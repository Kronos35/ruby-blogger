Fabricator(:person) do
  name { Faker::Name.name }
  age 45
  gender { %w(M F).sample }
end
