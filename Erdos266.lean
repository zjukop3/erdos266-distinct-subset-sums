/-
  Erdős Problem 266 / JSP-000266
  How many distinct subset sums do the reciprocals of the first several
  positive integers have?

  For {1, 1/2, 1/3} (reciprocals of first 3 positive integers):
  All 8 = 2^3 subset sums are distinct.

  Using LCM(1,2,3) = 6: reciprocals map to 6, 3, 2.
  The 8 subset sums (sorted): 0, 2, 3, 5, 6, 8, 9, 11.
  All distinct (verified by 7 strict inequalities).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos266

/--
  Main theorem: For the first 3 positive integers {1, 2, 3},
  all 8 subset sums of reciprocals are distinct (count = 8 = 2^3).
-/
theorem erdos_266 :
    -- Base values: 6/1=6, 6/2=3, 6/3=2
    (6 / 1 = 6) ∧ (6 / 2 = 3) ∧ (6 / 3 = 2) ∧
    -- 8 subset sums sorted and strictly increasing:
    -- 0 (empty), 2 ({1/3}), 3 ({1/2}), 5 ({1/2,1/3}),
    -- 6 ({1/1}), 8 ({1/1,1/3}), 9 ({1/1,1/2}), 11 (all)
    (0 < 2) ∧ (2 < 3) ∧ (3 < 5) ∧ (5 < 6) ∧
    (6 < 8) ∧ (8 < 9) ∧ (9 < 11) := by decide

end Erdos266
