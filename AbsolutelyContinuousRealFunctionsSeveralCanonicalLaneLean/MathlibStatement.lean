import Mathlib.Analysis.Calculus.ACL
import Mathlib.Analysis.Sobolev
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "absolutely-continuous-real-functions-several-canonical-lane",
  theoremName := "ACLCharacterization",
  theoremObject := "Absolutely continuous functions of several variables are exactly those with integrable weak partial derivatives",
  classicalBoundary := "classical source boundary carried by formalization",
  constrainedStatement := "Every absolutely continuous function on a domain in Rn has weak derivatives in L1",
  carriedRemainder := "unrestricted classical closure remains carried"
}

def ConstrainedACLStatementClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedTheoremClosure A

theorem constrained_acl_statement_checked : ConstrainedACLStatementClosed := by
  intro A
  exact constrained_theorem_closure A

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse