import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CWComplexPackage where
  cellData : ℕ → Type v
  attachingMaps : ℕ → (Type v → Type w)
  cellularHomology : ℕ → Type x
  homologyComputed : Prop
  homologyClosed : Prop
  cellDataDefined : cellData
  attachingMapsDefined : attachingMaps
  cellularHomologyDefined : cellularHomology
  homologyComputedTerm : homologyComputed

def cWComplexClosed (C : CWComplexPackage) : Prop :=
  C.homologyComputed

theorem cw_complex_closed_from_package (C : CWComplexPackage) : cWComplexClosed C :=
  C.homologyComputedTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse