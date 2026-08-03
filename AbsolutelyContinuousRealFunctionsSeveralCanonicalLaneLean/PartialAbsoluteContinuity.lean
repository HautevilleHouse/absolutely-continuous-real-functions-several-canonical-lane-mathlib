import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AbsoluteContinuityDefinition

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure PartialAbsoluteContinuity (n : ℕ) where
  function : (Fin n → ℝ) → ℝ
  fixedVariables : Fin n → Bool
  absoluteContinuityInUnfixed : Prop

def PartialAbsoluteContinuityClosed (n : ℕ) (p : PartialAbsoluteContinuity n) : Prop :=
  p.absoluteContinuityInUnfixed

theorem partial_absolute_continuity_closed_from_evidence (n : ℕ) (p : PartialAbsoluteContinuity n) (h : p.absoluteContinuityInUnfixed) :
    PartialAbsoluteContinuityClosed n p := h

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse