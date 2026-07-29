import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
