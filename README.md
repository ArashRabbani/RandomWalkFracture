# RandomWalkFracture
Simulating fractures in heterogenous media using Random Walk approach

This code can generate 
![Alt text](https://github.com/ArashRabbani/RandomWalkFracture/blob/main/Final.gif)


These fractures are generated via a random walk approach which is inspired by the idea used in Mhiri et al. (2015). In this approach, we consider some arbitrary walkers that can move to their neighbouring cells/pixel in each time step in a random manner. In 2D, each walker, has 8 neighbouring pixel to travel. In order to control the general trend of the pathway, a bias weight is put on the pixels which are aligned to the desired fracture direction. So, the walkers wobble randomly but in a larger picture they are gradually moving towards the biased direction. Then, we run this process for several times and calculate a cost function for each trial. If a walker path cuts hard grains/solid sections of the porous media in which the CT number is higher, the path cost would increase. Finally, in a random search approach, we select the least expensive path to establish a fracture in that area.

Figure below illustrates the cost minimization process which is used to generate a horizontal fracture in the Estaillades sample. As can be seen, at the initial generations of the random search, fracture path has a high cost due to hitting many high density zones in the image (Fig-a). Quickly, the algorithm finds pathways with a lower cost and start to bypass some expensive zones (Fig-b). And finally, after 1000 generations, a plausible trend for an artificial fracture is obtained in which the sample is cut at the points with the lowest cost while maintaining the optimization limits such as the maximum number of steps (Fig-c).

It is noteworthy that the cost function is defined as the averaged values of the voxels within the fracture path. Also, the voxel cost of the whole map is normalized to be between 0 and 1 (Fig-d). 

![Alt text](https://github.com/ArashRabbani/RandomWalkFracture/blob/main/im.jpg)

# How to use?
Open MATLAB and run "RandomWalkFracture.m". You need to replace your 2-D cost image in the "Data" directory. Then set the number of desired generations for searching a low cost fracture. 
# References
-Rabbani, A., Babaei, M., & Javadpour, F. (2020). A triple pore network model (T-PNM) for gas flow simulation in fractured, micro-porous and meso-porous media. Transport in Porous Media, 132(3), 707-740.
([Link](https://link.springer.com/article/10.1007/s11242-020-01409-w))

-Mhiri, A., Blasingame, T. A., & Moridis, G. J. (2015, September). Stochastic modeling of a fracture network in a hydraulically fractured shale-gas reservoir. In SPE Annual Technical Conference and Exhibition. OnePetro.

- Raw image source: Tom Bultreys, Luc Van Hoorebeke, Veerle Cnudde. Multi-scale, micro-computed tomography-based pore network models to simulate drainage in heterogeneous rocks. Advances in Water Resources. 2015.
