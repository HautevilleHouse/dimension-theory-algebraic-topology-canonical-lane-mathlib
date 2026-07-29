import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

def ConstrainedDimensionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimension_endgame (A : AdmissibleClass) : ConstrainedDimensionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
