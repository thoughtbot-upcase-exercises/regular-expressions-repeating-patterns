require "spec_helper"

describe "regex_matching_any_number_of_zs" do
  it "matches 'z'" do
    expect(regex_matching_any_number_of_zs).to match "z"
  end

  it "matches 'zzz'" do
    expect(regex_matching_any_number_of_zs).to match "z"
  end

  it "matches 'abc'" do
    expect(regex_matching_any_number_of_zs).to match "abc"
  end

  it "matches the empty string" do
    expect(regex_matching_any_number_of_zs).to match ""
  end
end

describe "regex_matching_at_least_one_z" do
  it "matches 'z'" do
    expect(regex_matching_at_least_one_z).to match "z"
  end

  it "matches 'zzz'" do
    expect(regex_matching_at_least_one_z).to match "zzz"
  end

  it "does not match 'abc'" do
    expect(regex_matching_at_least_one_z).not_to match "abc"
  end

  it "does not match the empty string" do
    expect(regex_matching_at_least_one_z).not_to match ""
  end
end

describe "regex_matching_z_at_most_once" do
  it "matches 'aza'" do
    expect(regex_matching_z_at_most_once).to match "aza"
  end

  it "matches 'aa'" do
    expect(regex_matching_z_at_most_once).to match "aa"
  end

  it "does not match 'azzza'" do
    expect(regex_matching_z_at_most_once).not_to match "azzza"
  end
end

describe "regex_with_exactly_two_zs" do
  it "matches 'azza'" do
    expect(regex_with_exactly_two_zs).to match "azza"
  end

  it "does not match 'azzza'" do
    expect(regex_with_exactly_two_zs).not_to match "azzza"
  end
end

describe "regex_with_two_or_more_zs" do
  it "matches 'azza'" do
    expect(regex_with_two_or_more_zs).to match "azza"
  end

  it "matches 'azzza'" do
    expect(regex_with_two_or_more_zs).to match "azzza"
  end

  it "does not match 'aza'" do
    expect(regex_with_two_or_more_zs).not_to match "aza"
  end
end

describe "regex_with_two_to_four_zs" do
  it "matches 'azza'" do
    expect(regex_with_two_to_four_zs).to match "azza"
  end

  it "matches 'azzza'" do
    expect(regex_with_two_to_four_zs).to match "azzza"
  end

  it "matches 'azzzza'" do
    expect(regex_with_two_to_four_zs).to match "azzzza"
  end

  it "does not match 'aza'" do
    expect(regex_with_two_to_four_zs).not_to match "aza"
  end
end

describe "regex_with_at_most_three_zs" do
  it "matches 'aa'" do
    expect(regex_with_at_most_three_zs).to match "aa"
  end

  it "matches 'aza'" do
    expect(regex_with_at_most_three_zs).to match "aza"
  end

  it "matches 'azza'" do
    expect(regex_with_at_most_three_zs).to match "azza"
  end

  it "matches 'azzza'" do
    expect(regex_with_at_most_three_zs).to match "azzza"
  end

  it "does not match 'azzzza'" do
    expect(regex_with_at_most_three_zs).not_to match "azzzza"
  end
end

