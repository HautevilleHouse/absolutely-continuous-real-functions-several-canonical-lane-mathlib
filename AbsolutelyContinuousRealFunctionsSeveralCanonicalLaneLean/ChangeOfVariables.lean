import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.JacobianIntegrability

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ChangeOfVariablesPackage {A : AdmissibleClass} (J : JacobianIntegrabilityPackage A) where
  transformationIsBijection : Prop
  transformationIsAC : Prop
  changeOfVariablesFormula : Prop

structure ChangeOfVariablesEvidence {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    (C : ChangeOfVariablesPackage J) where
  transformationIsBijectionClosed : C.transformationIsBijection
  transformationIsACClosed : C.transformationIsAC
  changeOfVariablesFormulaClosed : C.changeOfVariablesFormula

def ChangeOfVariablesClosed {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    (C : ChangeOfVariablesPackage J) : Prop :=
  C.transformationIsBijection ∧ C.transformationIsAC ∧ C.changeOfVariablesFormula

theorem change_of_variables_closed_from_evidence
    {A : AdmissibleClass} {J : JacobianIntegrabilityPackage A}
    (C : ChangeOfVariablesPackage J) (E : ChangeOfVariablesEvidence C) :
    ChangeOfVariablesClosed C := by
  exact And.intro E.transformationIsBijectionClosed
    (And.intro E.transformationIsACClosed E.changeOfVariablesFormulaClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse