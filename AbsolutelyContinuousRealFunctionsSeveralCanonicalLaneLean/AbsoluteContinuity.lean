import Mathlib.Analysis.Calculus.ACL
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACAnalyticCertificate (E : EuclideanSpace) where
  function : ACAFunction E
  partialDerivativesExist : Prop
  integrablePartialDerivatives : Prop
  absolutelyContinuous : Prop
  partialDerivativesExistClosed : partialDerivativesExist
  integrablePartialDerivativesClosed : integrablePartialDerivatives
  absolutelyContinuousClosed : absolutelyContinuous
  aclEvidence : ACAFunction E

def ACAnalyticCertificateClosed {E : EuclideanSpace} (C : ACAnalyticCertificate E) : Prop :=
  C.partialDerivativesExist ∧ C.integrablePartialDerivatives ∧ C.absolutelyContinuous

theorem acl_analytic_certificate_closed {E : EuclideanSpace} (C : ACAnalyticCertificate E) :
    ACAnalyticCertificateClosed C := by
  exact And.intro C.partialDerivativesExistClosed
    (And.intro C.integrablePartialDerivativesClosed C.absolutelyContinuousClosed)

structure ACAnalyticEvidenceTerms {E : EuclideanSpace} (C : ACAnalyticCertificate E) where
  partialDerivativesExist : C.partialDerivativesExist
  integrablePartialDerivatives : C.integrablePartialDerivatives
  absolutelyContinuous : C.absolutelyContinuous
  aclClosed : ACAnalyticCertificateClosed C

def ACAnalyticCertificate.evidenceTerms {E : EuclideanSpace} (C : ACAnalyticCertificate E) :
    ACAnalyticEvidenceTerms C := {
  partialDerivativesExist := C.partialDerivativesExistClosed
  integrablePartialDerivatives := C.integrablePartialDerivativesClosed
  absolutelyContinuous := C.absolutelyContinuousClosed
  aclClosed := acl_analytic_certificate_closed C
}

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse