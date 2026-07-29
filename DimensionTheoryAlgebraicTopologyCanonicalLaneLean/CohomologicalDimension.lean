import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CohomologicalDimensionPackage where
  space : Type
  topology : TopologicalSpace space
  sheafCohomology : Type
  vanishingDegree : ℕ
  nonVanishingDegree : ℕ
  dimension : ℕ
  dimensionDefined : dimension = nonVanishingDegree

def CohomologicalDimensionClosed (C : CohomologicalDimensionPackage) : Prop :=
  C.dimensionDefined

theorem cohomological_dimension_closed (C : CohomologicalDimensionPackage) : CohomologicalDimensionClosed C := by
  exact C.dimensionDefined

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse