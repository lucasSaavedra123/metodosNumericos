function [energy] = kineticEnergy(movement,x0,mass,t)

    [timeArray movementInformation] = RK4(movement,0,x0,t,0.01);
    velocity = movementInformation(2,end);
    energy = (1/2) * mass * (velocity .^ 2);

endfunction