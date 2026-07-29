import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure MayerVietorisSequencePackage where
  space : Type u
  openCoverA : Set space
  openCoverB : Set space
  intersection : Set space
  chainComplexData : ℕ → Type v
  longExactSequence : Prop
  boundaryMapDefinition : Prop
  excisionProperty : Prop
  relativeHomologyIsomorphism : Prop

structure MayerVietorisSequenceEvidence (M : MayerVietorisSequencePackage) where
  longExactSequenceClosed : M.longExactSequence
  boundaryMapDefinitionClosed : M.boundaryMapDefinition
  excisionPropertyClosed : M.excisionProperty
  relativeHomologyIsomorphismClosed : M.relativeHomologyIsomorphism

def MayerVietorisSequenceClosed (M : MayerVietorisSequencePackage) : Prop :=
  M.longExactSequence ∧ M.boundaryMapDefinition ∧
  M.excisionProperty ∧ M.relativeHomologyIsomorphism

theorem mayer_vietoris_sequence_closed_from_evidence
    (M : MayerVietorisSequencePackage) (E : MayerVietorisSequenceEvidence M) :
    MayerVietorisSequenceClosed M := by
  exact And.intro E.longExactSequenceClosed
    (And.intro E.boundaryMapDefinitionClosed
      (And.intro E.excisionPropertyClosed E.relativeHomologyIsomorphismClosed))

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse