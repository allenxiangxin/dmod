#include <stdlib.h>
#include <RAT/AnyParse.hh>
#include <RAT/Rat.hh>
#include <RAT/DetectorFactory.hh>
#include <iostream>
#include <string>

namespace DMOD {
class Dmod : public RAT::Rat {
 public:
  Dmod(RAT::AnyParse* p, int argc, char** argv) : Rat(p, argc, argv) {
    // Append an additional data directory (for ratdb and geo)
    char* dmoddata = getenv("DMODDATA");
    if (dmoddata != NULL) {
      ratdb_directories.insert(static_cast<std::string>(dmoddata) + "/ratdb");
      model_directories.insert(static_cast<std::string>(dmoddata) + "/models");
    }
    // Initialize a geometry factory
    new GeoDMODFactory();
    // Include a new type of processor
    // Add a unique component to the datastructure
  }
};
}  // namespace DMOD

int main(int argc, char** argv) {
  auto parser = new RAT::AnyParse(argc, argv);
  auto dmod = DMOD::Dmod(parser, argc, argv);
  dmod.Begin();
  dmod.Report();
}
