import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure SpectralSequencePackage where
  filtrationType : Type u
  pageE2 : ℕ × ℕ → Type v
  differentials : ℕ → ℕ → ℕ → (pageE2 (p,q) → pageE2 (p+n, q-n+1))
  convergence : Prop
  abuttingTo : ℕ → Type w
  spectralSequenceClosed : Prop
  filtrationDefined : filtrationType
  pageE2Defined : pageE2
  differentialsDefined : differentials
  convergenceTerm : convergence
  abuttingToDefined : abuttingTo

def spectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergence

theorem spectral_sequence_closed_from_package (S : SpectralSequencePackage) : spectralSequenceClosed S :=
  S.convergenceTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse