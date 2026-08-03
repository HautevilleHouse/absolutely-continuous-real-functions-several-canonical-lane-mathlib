import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure JordanDecompositionPackage (A : AdmissibleClass) where
  signedMeasureDefined : Prop
  positivePart : Prop
  negativePart : Prop
  decompositionUnique : Prop

structure JordanDecompositionEvidence {A : AdmissibleClass} (P : JordanDecompositionPackage A) where
  signedMeasureDefinedClosed : P.signedMeasureDefined
  positivePartClosed : P.positivePart
  negativePartClosed : P.negativePart
  decompositionUniqueClosed : P.decompositionUnique

def JordanDecompositionClosed {A : AdmissibleClass} (P : JordanDecompositionPackage A) : Prop :=
  P.signedMeasureDefined ∧ P.positivePart ∧
  P.negativePart ∧ P.decompositionUnique

theorem jordan_decomposition_closed_from_evidence
    {A : AdmissibleClass} (P : JordanDecompositionPackage A)
    (E : JordanDecompositionEvidence P) : JordanDecompositionClosed P := by
  exact And.intro E.signedMeasureDefinedClosed
    (And.intro E.positivePartClosed
      (And.intro E.negativePartClosed E.decompositionUniqueClosed))

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse