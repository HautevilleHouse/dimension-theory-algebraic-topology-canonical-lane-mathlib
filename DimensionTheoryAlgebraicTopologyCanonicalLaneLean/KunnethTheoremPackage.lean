import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure KunnethTheoremPackage where
  spaceA : Type u
  spaceB : Type v
  homologyA : ℕ → Type w
  homologyB : ℕ → Type x
  homologyProduct : ℕ → Type y
  torsionProduct : ℕ → Type z
  kunnethShortExactSequence : Prop
  tensorProductComputation : Prop
  crossProductHomomorphism : Type α

structure KunnethTheoremEvidence (K : KunnethTheoremPackage) where
  kunnethShortExactSequenceClosed : K.kunnethShortExactSequence
  tensorProductComputationClosed : K.tensorProductComputation

def KunnethTheoremClosed (K : KunnethTheoremPackage) : Prop :=
  K.kunnethShortExactSequence ∧ K.tensorProductComputation

theorem kunneth_theorem_closed_from_evidence
    (K : KunnethTheoremPackage) (E : KunnethTheoremEvidence K) :
    KunnethTheoremClosed K := by
  exact And.intro E.kunnethShortExactSequenceClosed
    E.tensorProductComputationClosed

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse