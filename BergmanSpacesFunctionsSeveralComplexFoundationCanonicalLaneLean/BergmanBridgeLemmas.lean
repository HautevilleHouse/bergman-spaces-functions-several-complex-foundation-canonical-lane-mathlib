import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse