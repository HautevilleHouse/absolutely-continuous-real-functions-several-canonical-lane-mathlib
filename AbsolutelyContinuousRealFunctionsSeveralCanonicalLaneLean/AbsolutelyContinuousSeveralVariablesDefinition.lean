import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure AbsolutelyContinuousOnBox where
  domain : Type u
  box : Set (ℝ ^ n) -- assuming n is some integer
  functionType : domain → ℝ
  absoluteContinuityCondition : Prop
  additiveProperty : Prop
  coveringProperty : Prop

definition
  absoluteContinuityConditionClosed : absoluteContinuityCondition
  additivePropertyClosed : additiveProperty
  coveringPropertyClosed : coveringProperty

structure AbsolutelyContinuousOnBoxEvidence (F : AbsolutelyContinuousOnBox) where
  absoluteContinuityConditionClosed : F.absoluteContinuityCondition
  additivePropertyClosed : F.additiveProperty
  coveringPropertyClosed : F.coveringProperty

def AbsolutelyContinuousOnBoxClosed (F : AbsolutelyContinuousOnBox) : Prop :=
  F.absoluteContinuityCondition ∧ F.additiveProperty ∧ F.coveringProperty

theorem absolutely_continuous_on_box_closed_from_evidence
    (F : AbsolutelyContinuousOnBox) (E : AbsolutelyContinuousOnBoxEvidence F) :
    AbsolutelyContinuousOnBoxClosed F := by
  exact And.intro E.absoluteContinuityConditionClosed
    (And.intro E.additivePropertyClosed E.coveringPropertyClosed)

end HautevilleHouse
end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean