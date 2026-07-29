import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure DimensionTheoryAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  dimension : ℕ
  dimensionInvariant : Prop
  conclusion : dimensionInvariant

structure DimensionTheoryAdmissibleClass where
  object : DimensionTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DimensionTheoryWitnessClosed (O : DimensionTheoryAdmittedObject) : Prop :=
  O.dimensionInvariant

def admittedClosure (A : DimensionTheoryAdmissibleClass) : Prop :=
  DimensionTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse