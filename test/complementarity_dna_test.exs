defmodule ComplementarityDnaTest do
  use ExUnit.Case
  doctest ComplementarityDna
  alias ComplementarityDna

  describe "Comprahensions test" do
    test "Test Complementarity" do
      assert ComplementarityDna.complementarity("ACGTATC") == "TGCATAG"
    end

    test "Test incorrect nucleotide" do
      assert_raise RuntimeError, fn ->
        ComplementarityDna.complementarity("BBADCT")
      end
    end
  end
end
