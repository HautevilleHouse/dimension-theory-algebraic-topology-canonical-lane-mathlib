import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure MayerVietorisSequencePackage where
  space : Type u
  topology : TopologicalSpace space
  openCover : Type v
  inclusionMaps : Type w
  longExactSequence : Prop
  dimensionCompatibility : Prop

structure MayerVietorisSequenceEvidence (M : MayerVietorisSequencePackage) where
  longExactSequenceClosed : M.longExactSequence
  dimensionCompatibilityClosed : M.dimensionCompatibility

def MayerVietorisSequenceClosed (M : MayerVietorisSequencePackage) : Prop :=
  M.longExactSequence ∧ M.dimensionCompatibility

theorem mayer_vietoris_sequence_closed_from_evidence
    (M : MayerVietorisSequencePackage) (E : MayerVietorisSequenceEvidence M) :
    MayerVietorisSequenceClosed M := by
  exact And.intro E.longExactSequenceClosed E.dimensionCompatibilityClosed

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse