defmodule ComplementarityDna do

   @doc """
  Complementarity

  ## Examples

      iex> ComplementarityDna.complementarity("ACGTATC")
      "TGCATAG"

  """

  def complementarity(strand) do
    strand
    |> IO.inspect
    |> split_letters
    |> Enum.map(fn x -> String.upcase(x) end)
    |> Enum.map(fn
        "A" -> "T"
        "T" -> "A"
        "C" -> "G"
        "G" -> "C"
        _ -> raise "Incorrect nucleotide -> `Nucleotides [A, C, T, G]`"
    end)
    |> List.to_string
  end

  def split_letters(strand) do
    String.graphemes(strand)
   end

end
