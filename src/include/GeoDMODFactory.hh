#ifndef __RAT_GeoDMODFactory__
#define __RAT_GeoDMODFactory__

#include <RAT/GeoSolidFactory.hh>

namespace DMOD {
 class GeoDMODFactory : public RAT::GeoSolidFactory {
 public:
   GeoDMODFactory() : GeoSolidFactory("dmod") {};
   virtual G4VSolid *ConstructSolid(RAT::DBLinkPtr table);
 };

} // namespace DMOD

#endif
