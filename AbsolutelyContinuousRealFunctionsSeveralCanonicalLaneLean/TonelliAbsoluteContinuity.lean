import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure TonelliACPackage
    {F : AbsolutelyContinuousOnBox} where
  tonelliCondition : Prop
  fubiniProperty : Prop
  crossSectionAC : Prop

structure TonelliACEvidence
    {F : AbsolutelyContinuousOnBox} (T : TonelliACPackage F) where
  tonelliConditionClosed : T.tonelliCondition
  fubiniPropertyClosed : T.fubiniProperty
  crossSectionACClosed : T.crossSectionAC

def TonelliACClosed
    {F : AbsolutelyContinuousOnBox} (T : TonelliACPackage F) : Prop :=
  T.tonelliCondition ∧ T.fubiniProperty ∧ T.crossSectionAC

theorem tonelli_ac_closed_from_evidence
    {F : AbsolutelyContinuousOnBox} (T : TonelliACPackage F)
    (E : TonelliACEvidence T) : TonelliACClosed T := by
  exact And.intro E.tonelliConditionClosed
    (And.intro E.fubiniPropertyClosed E.crossSectionACClosed)

end HautevilleHouse
end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean