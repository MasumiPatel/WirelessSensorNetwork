# Efficient Energy Consumption in Wireless Sensor Networks (WSN)
## Project Overview
Welcome to our final year project developed during the 8th semester of college! This project focuses on ensuring efficient energy consumption in Wireless Sensor Networks (WSN). Leveraging MATLAB and SIMULINK, we have devised a mechanism to optimize the energy usage of cluster head nodes within the network, ultimately extending the network's overall lifetime.

## Project Description
In the context of our project, we consider a substation and various cluster heads (sensors) as part of a single WSN. The conventional approach involves a head cluster node to which the substation transmits messages, and this head node communicates with other nodes in the WSN. Unfortunately, this leads to faster energy depletion of the head node compared to the other nodes, necessitating earlier replacement.

Our project proposes a novel mechanism to ensure that all nodes experience energy depletion more evenly, allowing for simultaneous replacement. We dynamically elect a head cluster node each time communication is required. The selection is based on factors such as the distance between nodes and the remaining energy within each node. By considering both distance and energy levels, our algorithm aims to distribute the energy consumption more evenly across the WSN.

## Key Features
Dynamic Head Cluster Node Election: The project introduces a dynamic mechanism to elect a head cluster node for communication, considering factors like distance and energy levels.

Even Energy Depletion: By optimizing the head node selection process, our mechanism aims to ensure that all nodes experience energy depletion more evenly.

MATLAB GUI: We have developed a MATLAB GUI that assists in suggesting the best method for selecting a head cluster node based on user-provided inputs, including the distance between nodes and the remaining energy in each node.

## Technical Details
The project's technical details include the use of MATLAB and SIMULINK for modeling and simulation. The algorithm for head cluster node election is implemented and evaluated within the SIMULINK environment. The MATLAB GUI provides a user-friendly interface for inputting parameters and visualizing the suggested methods.

## Getting Started
To explore the project or replicate its findings:

1.Ensure you have MATLAB and SIMULINK installed on your system.

2.Clone the project repository to your local machine:

3.Copy code

        git clone https://github.com/MasumiPatel/WirelessSensorNetwork.git

4.Open the project files using MATLAB and SIMULINK.

5.Use the provided MATLAB GUI to input parameters and visualize the suggested methods for head cluster node selection.
