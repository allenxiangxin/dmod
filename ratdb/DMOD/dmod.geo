{
name:"GEO",
index:"world",
valid_begin:[0,0],
valid_end:[0,0],
mother:"",
type :"box",
size: [2000.0, 2000.0, 1500.0],
position:[0.0,0.0,0.0],
material:"cryostat_vacuum",
invisble:1,
}


{
name:"GEO",
index: "liquid",
valid_begin:[0.0,0.0],
valid_end:[0.0,0.0],
mother: "world",
type:"tube",
r_max: 500.38,
size_z: 5,
position:[0.0,0.0,0.0],
material:"water_bnl",
color:[0.01, 0.01, 0.99, 1.0], //blue
drawstyle:"solid",
}
