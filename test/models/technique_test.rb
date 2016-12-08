require 'test_helper'

class TechniqueTest < ActiveSupport::TestCase
  def test_search_in_name
    ap_chagi = create_technique(name: "Ap Chagi")
    dollyo_chagi = create_technique(name: "Dollyo Chagi")
    create_technique(name: "Sujang Chigi")

    search_results = Technique.search_for("chagi")

    assert_equal ["Ap Chagi", "Dollyo Chagi"], search_results.map(&:name).sort
  end

  def test_search_in_description
    ap_chagi = create_technique(name: "Ap", description: "Front kick")
    dollyo_chagi = create_technique(name: "Dollyo", description: "Tornado kick")
    create_technique(description: "Palm punch")

    search_results = Technique.search_for("KICK")

    assert_equal ["Ap", "Dollyo"], search_results.map(&:name).sort
  end

  def test_search_in_topic
    ap_chagi = create_technique(name: "Ap", topic: :joksul)
    dollyo_chagi = create_technique(name: "Dollyo", topic: :joksul)
    create_technique(topic: :sugisul)

    search_results = Technique.search_for("Joksul")

    assert_equal ["Ap", "Dollyo"], search_results.map(&:name).sort
  end

  def create_technique(name: "Ap Chagi", topic: :joksul, description: "Front kick")
    white = Belt.find_or_create_by!(degree: "Mu Kup", color: "Hvid")

    Technique.create!(
      belt: white,
      name: name,
      topic: topic,
      description: description,
    )
  end
end
