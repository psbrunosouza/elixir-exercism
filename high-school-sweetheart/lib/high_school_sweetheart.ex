defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    name_as_initial = first_letter(name)
    |> String.upcase()
    "#{name_as_initial}."
  end

  def initials(full_name) do
    full_name_splitted = String.split(full_name)
    [a, b] = full_name_splitted
    "#{initial(a)} #{initial(b)}"
  end

  def pair(full_name1, full_name2) do
     """
          ******       ******
        **      **   **      **
      **         ** **         **
     **            *            **
     **                         **
     **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
      **                       **
        **                   **
          **               **
            **           **
              **       **
                **   **
                  ***
                   *
     """ 
  end
end
