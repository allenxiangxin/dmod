add_library( dmodobj OBJECT
  # Append each .cc file
)

target_include_directories( dmodobj PUBLIC
  $<BUILD_INTERFACE:${DMOD_INCLUDE_DIR}>
  $<INSTALL_INTERFACE:include>)

file(COPY include/ DESTINATION ${DMOD_INCLUDE_DIR})

add_executable(dmod dmod.cpp)
target_link_libraries(dmod PUBLIC 
  dmodobj ${ROOT_LIBRARIES} ${Geant4_LIBRARIES} ${Ratpac_LIBRARIES})

install(TARGETS dmod RUNTIME DESTINATION bin)
