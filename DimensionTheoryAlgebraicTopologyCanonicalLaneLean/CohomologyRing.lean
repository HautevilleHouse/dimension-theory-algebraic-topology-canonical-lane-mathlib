import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CohomologyRingPackage where
  spaceType : Type u
  coefficientRing : Type v
  cohomologyGroups : ℕ → Type w
  cupProduct : ℕ → ℕ → (cohomologyGroups p → cohomologyGroups q → cohomologyGroups (p+q))
  gradedCommutative : Prop
  unital : Prop
  cohomologyRingClosed : Prop
  spaceTypeDefined : spaceType
  coefficientRingDefined : coefficientRing
  cohomologyGroupsDefined : cohomologyGroups
  cupProductDefined : cupProduct
  gradedCommutativeTerm : gradedCommutative
  unitalTerm : unital

def cohomologyRingClosed (C : CohomologyRingPackage) : Prop :=
  C.gradedCommutative ∧ C.unital

theorem cohomology_ring_closed_from_package (C : CohomologyRingPackage) : cohomologyRingClosed C :=
  And.intro C.gradedCommutativeTerm C.unitalTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse