# Cruise Controller design
Prerequisite knowledge - MATLab, Control systems
This repository deals with the controller design for cruise control of a car in MATLab and Simulink.
The Cruise control is one of the most used control systems in automobile industry to ensure the safety of the vehicle and cruise at any desired speed that can be achieved by a given vehicle. This report discusses the design of controllers for an average car, Audi A4 2.0 TDI, and BMW 520d. 
The necessity of cruise control is to improve the driving experience, reduce fatigue, and advance the overall efficiency of the car. There are various techniques to attain a desirable solution for this problem. This report focuses on PD, PID based cruise controller design and Fuzzy P based controller design. The document also analyzes the advantages and disadvantages of each of the controllers and modelling of each of the above-mentioned cars and the performance of each of the controller in various scenarios that are experienced on roads.

System Modelling 

mv ̇+1⁄2 AρC_d v^2  = u + d
Analyzing the given equation gives us an insight that the equation has non-linearity induced by the v^2 which in turn produces uncertainty over the system responses. The system is linearized over a specific point v^*. Here the system is linearized over the point 50 kmph (13.88 ms-1).
The first step in achieving cruise control is to linearize and compute transfer function of the plant which generates the following equation,
δv(s)/(δu(s))=  (1⁄m)/(s+ ((AC_d ρv^*)⁄m) )
The parameters chosen for each of the cars are tabulated below,
Cars / Parameters	AC_d m2	v^* ms-1	ρ	m kg
Average car	0.23	13.88 	1.1839	1000
BMW 520d	0.52	13.88 	1.1839	1743 [1]

Audi A4 2.0 TDI	0.51	13.88 	1.1839	1650 [2]

The systems modelling involves substitution of values to the transfer function to generate the plant transfer function. This function is substituted to the transfer function block of Simulink. 

