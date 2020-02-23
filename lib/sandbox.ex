defmodule Sandbox do
  @doc """
  Receives a sentence, capitalizes each word, and returns the sentence
  """
  def capitalize(sentence) do
    String.split(sentence)
    |> Enum.map(fn x -> String.capitalize(x) <> " " end)
    |> Enum.to_list()
    |> List.to_string()
    |> String.slice(0..-2)
  end

  @doc """
  receives a sentence and inserts the word count after each word.
  ex. "How many Earth's could fit inside the Sun" should return
  "How 1 many 2 Earth's 3 could 4 fit 5 inside 6 the 7 Sun 8"
  """
  def countWordsWeird(sentence) do
    String.split(sentence)
    |> Enum.with_index()
    |> Enum.map(fn {x, y} -> Tuple.to_list({x, Integer.to_string(y + 1)}) end)
    |> List.flatten()
    |> Sandbox.formatHelper()
    |> String.slice(0..-2)
  end

  def formatHelper(el) do
    Enum.map(el, fn x -> x <> " " end)
    |> List.to_string()
  end
end
