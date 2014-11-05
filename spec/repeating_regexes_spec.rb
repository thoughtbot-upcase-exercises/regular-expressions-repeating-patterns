require "spec_helper"

describe "regex_matching_any_number_of_zs" do
  it "matches 'aza'" do
    expect(regex_matching_any_number_of_zs).to match "aza"
  end

  it "matches 'azzza'" do
    expect(regex_matching_any_number_of_zs).to match "azzza"
  end

  it "matches 'aa'" do
    expect(regex_matching_any_number_of_zs).to match "aa"
  end

  it "does not match 'abc'" do
    expect(regex_matching_any_number_of_zs).not_to match "abc"
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

describe "regex_with_exactly_ten_zs" do
  it "matches 'a[TEN Zs]a'" do
    ten_zs = "z" * 10
    expect(regex_with_exactly_ten_zs).to match "a#{ten_zs}a"
  end

  it "does not match 'aza'" do
    expect(regex_with_exactly_ten_zs).not_to match "aza"
  end

  it "does not match ten A's" do
    ten_as = "a" * 10
    expect(regex_with_exactly_ten_zs).not_to match ten_as
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

describe "regex_with_ten_to_twelve_zs" do
  it "matches ten zs bracketed by 'a's" do
    ten_zs = "z" * 10
    expect(regex_with_ten_to_twelve_zs).to match "a#{ten_zs}a"
  end

  it "matches eleven zs bracketed by 'a's" do
    eleven_zs = "z" * 11
    expect(regex_with_ten_to_twelve_zs).to match "a#{eleven_zs}a"
  end

  it "matches twelve zs bracketed by 'a's" do
    twelve_zs = "z" * 12
    expect(regex_with_ten_to_twelve_zs).to match "a#{twelve_zs}a"
  end

  it "does not match ten a's" do
    ten_as = "a" * 10
    expect(regex_with_ten_to_twelve_zs).not_to match ten_as
  end

  it "does not match 'aza'" do
    expect(regex_with_ten_to_twelve_zs).not_to match "aza"
  end
end

describe "regex_with_at_most_fifty_zs" do
  it "matches 'aa'" do
    expect(regex_with_at_most_fifty_zs).to match "aa"
  end

  it "matches 'aza'" do
    expect(regex_with_at_most_fifty_zs).to match "aza"
  end

  it "matches fifty z's bracketed by a's" do
    fifty_zs = "z" * 50
    expect(regex_with_at_most_fifty_zs).to match "a#{fifty_zs}a"
  end

  it "does not match fifty-one z's bracketed by a's" do
    fifty_one_zs = "z" * 51
    expect(regex_with_at_most_fifty_zs).not_to match "a#{fifty_one_zs}a"
  end

  it "does not match fifty-one b's" do
    fifty_one_bs = "b" * 51
    expect(regex_with_at_most_fifty_zs).not_to match fifty_one_bs
  end
end
