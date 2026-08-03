import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.SobolevEmbedding

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure LebesguePointsPackage {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} {S : SobolevEmbeddingPackage C} where
  lebesguePointDefinition : Prop
  almostEverywhereACFunction : Prop
  pointwiseApproximation : Prop

structure LebesguePointsEvidence {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} {S : SobolevEmbeddingPackage C}
    (L : LebesguePointsPackage S) where
  lebesguePointDefinitionClosed : L.lebesguePointDefinition
  almostEverywhereACFunctionClosed : L.almostEverywhereACFunction
  pointwiseApproximationClosed : L.pointwiseApproximation

def LebesguePointsClosed {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} {S : SobolevEmbeddingPackage C}
    (L : LebesguePointsPackage S) : Prop :=
  L.lebesguePointDefinition ∧ L.almostEverywhereACFunction ∧ L.pointwiseApproximation

theorem lebesgue_points_closed_from_evidence
    {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} {S : SobolevEmbeddingPackage C}
    (L : LebesguePointsPackage S) (E : LebesguePointsEvidence L) :
    LebesguePointsClosed L := by
  exact And.intro E.lebesguePointDefinitionClosed
    (And.intro E.almostEverywhereACFunctionClosed E.pointwiseApproximationClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse