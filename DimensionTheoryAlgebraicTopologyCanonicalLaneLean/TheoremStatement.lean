import DimensionTheoryAlgebraicTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure DimensionTopologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionTopologyAdmittedObject where
  space : DimensionTopologySpace
  finiteDimension : Prop
  coveringDimension : Prop
  cohomologyDimension : Prop
  conclusion : finiteDimension ∧ coveringDimension ∧ cohomologyDimension

def DimensionTopologyWitnessClosed (O : DimensionTopologyAdmittedObject) : Prop :=
  O.finiteDimension ∧ O.coveringDimension ∧ O.cohomologyDimension

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse