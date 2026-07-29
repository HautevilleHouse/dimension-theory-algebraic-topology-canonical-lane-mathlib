import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.closed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
