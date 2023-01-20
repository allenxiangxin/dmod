#include <RAT/GeoTubeFactory.hh>
#include <GeoDMODFactory.hh>

#include <G4VSolid.hh>
#include <G4VPhysicalVolume.hh>
#include <G4Tubs.hh>
#include <G4Ellipsoid.hh>
#include <G4UnionSolid.hh>
#include <G4SubtractionSolid.hh>
#include <G4Material.hh>
#include <G4LogicalVolume.hh>
#include <G4LogicalBorderSurface.hh>
#include <G4PVPlacement.hh>

#include <CLHEP/Units/SystemOfUnits.h>

namespace DMOD {

//Note this currently just constructs the Eos shape NOT BNL 1 ton
G4VSolid *GeoDMODFactory::ConstructSolid(RAT::DBLinkPtr table)
{
  // Inner radius of cylindrical part of DMOD
  G4double r_min = table->GetD("r_min");
  // Outer radius of cylindrical part of DMOD
  G4double r_max = table->GetD("r_max");
  // Half-height of cylindrical part of DMOD
  G4double size_z = table->GetD("size_z");
  // Inner radius of lip of DMOD

  // Solids for the cylindrical body and ellipical caps
  G4Tubs *body = new G4Tubs("body", r_min * CLHEP::mm,
                                    r_max * CLHEP::mm,
                                    size_z * CLHEP::mm,
                                    0., CLHEP::twopi);

  return body;
}

} // namespace DMOD
