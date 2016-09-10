white = Belt.find_or_create_by!(degree: "mu kup", color: "white")
white.techniques.find_or_create_by!(name: "Ap chagi", description: "Front kick", topic: :joksul)
white.techniques.find_or_create_by!(name: "Dollyo chagi", description: "Round house kick", topic: :joksul)

yellow = Belt.find_or_create_by!(degree: "9 kup", color: "yellow")
yellow.techniques.find_or_create_by!(name: "Yop chagi", description: "Side kick", topic: :joksul)
yellow.techniques.find_or_create_by!(name: "Yang sujang chigi", description: "Double palm strike", topic: :sugisul)