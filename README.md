# VANET-planning-with-Graph-theory

Welcome in the VANET environment simulator.
To run the simulation, run the Main_simulation.m file
By default, the used map is map1 (El-Tahrir Square Map).
No topology control is applied by default. Only the UDG is shown.
To change the used map, change the value of the variable "map" (The allowed values are 1:11).
To apply certain topology, change the value of the variable "topology" (0 => The UDG without applying any topologies, 1 => MST, 2 => MCDS, 3 => GG).

Inside this repository, there are 4 folders to be found:
1-) "AssetFunctions" which contains complementary functions used to implement the different algorithms used in the simulation.
2-) "TopologyControl" which contains the Topology Control Algorithm Functions.
3-) "Maps" which contains the different maps to be tested.
4-) "Skel2Graph3D" which is an open-source toolbox used in the image processing of the maps.
