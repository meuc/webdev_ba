white = Belt.find_or_create_by!(degree: "mu kup", color: "white")
white.techniques.find_or_create_by!(name: "Ap chagi", description: "Front kick", topic: :joksul)
white.techniques.find_or_create_by!(name: "Dollyo chagi", description: "Round house kick", topic: :joksul)

yellow = Belt.find_or_create_by!(degree: "9 kup", color: "yellow")
yellow.techniques.find_or_create_by!(name: "Yop chagi", description: "Side kick", topic: :joksul)
yellow.techniques.find_or_create_by!(name: "Yang sujang chigi", description: "Double palm strike", topic: :sugisul)

[
  { degree: "8 kup", color: "orange" },
  { degree: "7 kup", color: "green" },
  { degree: "6 kup", color: "blue" },
  { degree: "5 kup", color: "blue-red" },
  { degree: "4 kup", color: "red" },
  { degree: "3 kup", color: "red-brown" },
  { degree: "2 kup", color: "brown" },
  { degree: "1 kup", color: "brown-black" },
  { degree: "dan", color: "black" },
].each do |hash|
  Belt.create!(degree: hash.fetch(:degree), color: hash.fetch(:color))
end
