import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.ChangeOfVariables

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure SobolevEmbeddingPackage {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} where
  sobolevSpaceDefinition : Prop
  embeddingContinuous : Prop
  embeddingCompact : Prop

structure SobolevEmbeddingEvidence {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} (S : SobolevEmbeddingPackage C) where
  sobolevSpaceDefinitionClosed : S.sobolevSpaceDefinition
  embeddingContinuousClosed : S.embeddingContinuous
  embeddingCompactClosed : S.embeddingCompact

def SobolevEmbeddingClosed {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} (S : SobolevEmbeddingPackage C) : Prop :=
  S.sobolevSpaceDefinition ∧ S.embeddingContinuous ∧ S.embeddingCompact

theorem sobolev_embedding_closed_from_evidence
    {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    {C : ChangeOfVariablesPackage J} (S : SobolevEmbeddingPackage C)
    (E : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact And.intro E.sobolevSpaceDefinitionClosed
    (And.intro E.embeddingContinuousClosed E.embeddingCompactClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse