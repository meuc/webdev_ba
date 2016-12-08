white = Belt.find_or_create_by!(degree: "Mu Kup", color: "Hvid")
white.techniques.find_or_create_by!(name: "Ap chagi", description: "Front kick", topic: :joksul)
white.techniques.find_or_create_by!(name: "Dollyo chagi", description: "Round house kick", topic: :joksul)

yellow = Belt.find_or_create_by!(degree: "9. Kup", color: "Gul")
yellow.techniques.find_or_create_by!(name: "Yop chagi", description: "Side kick", topic: :joksul)
yellow.techniques.find_or_create_by!(name: "Yang sujang chigi", description: "Double palm strike", topic: :sugisul)

[
  { degree: "8. Kup", color: "Orange" },
  { degree: "7. Kup", color: "Grøn" },
  { degree: "6. Kup", color: "Blå" },
  { degree: "5. Kup", color: "Blå-rød" },
  { degree: "4. Kup", color: "Rød" },
  { degree: "3. Kup", color: "Rød-brun" },
  { degree: "2. Kup", color: "Brun" },
  { degree: "1. Kup", color: "Brun-sort" },
  { degree: "Dan", color: "Sort" },
].each do |hash|
  Belt.find_or_create_by!(degree: hash.fetch(:degree), color: hash.fetch(:color))
end
