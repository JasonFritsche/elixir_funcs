defmodule SandboxTest do
  use ExUnit.Case
  doctest Sandbox

  test "Capitalize each word in a sentence" do
    assert Sandbox.capitalize("little gene wants another snacc.") ==
             "Little Gene Wants Another Snacc."
  end

  test "empty string passed in to should return an empty string" do
    assert Sandbox.capitalize(" ") === ""
  end

  test "word counter counts words in a string" do
    assert Sandbox.countWordsWeird("the days seem to be getting shorter") ==
             "the 1 days 2 seem 3 to 4 be 5 getting 6 shorter 7"
  end
end
