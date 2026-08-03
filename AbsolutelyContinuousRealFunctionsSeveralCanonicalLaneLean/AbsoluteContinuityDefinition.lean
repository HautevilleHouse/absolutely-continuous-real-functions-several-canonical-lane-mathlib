import Mathlib.MeasureTheory.Measure.Lebesgue

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure Rectangle (n : ℕ) where
  lower : Fin n → ℝ
  upper : Fin n → ℝ
  nonempty : ∀ i, lower i < upper i

structure AbsoluteContinuityDefinition (n : ℕ) where
  function : (Fin n → ℝ) → ℝ
  epsilonDeltaCondition : ∀ ε > 0, ∃ δ > 0, ∀ (rectangles : List (Rectangle n)),
    (∑ r in rectangles, ∏ i, (r.upper i - r.lower i)) < δ →
    (∑ r in rectangles, |function (fun i => (r.lower i + r.upper i) / 2) - function (fun i => r.lower i)|) < ε

def AbsoluteContinuityWitness (n : ℕ) (defn : AbsoluteContinuityDefinition n) : Prop :=
  defn.epsilonDeltaCondition

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse