import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.WeakDerivative

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure SobolevSpace (n : ℕ) (p : ℝ) (Ω : Set (ℝ^n)) where
  functions : Type u
  norm : functions → ℝ
  completeness : Prop
  weakDerivativesUpToOrder : ℕ → Prop

structure SobolevEmbedding (n : ℕ) (p : ℝ) (Ω : Set (ℝ^n)) where
  source : SobolevSpace n p Ω
  target : Type v
  embedding : source.functions → target
  continuity : Prop
  aclCompatibility : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (n : ℕ) (p : ℝ) (Ω : Set (ℝ^n)) (S : SobolevSpace n p Ω), 
    A.object = S ∧ S.completeness

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  obtain ⟨n, p, Ω, S, h⟩ := A.object
  exact S.completeness

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse