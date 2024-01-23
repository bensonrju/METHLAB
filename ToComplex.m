function [expression] = ToComplex(z)

    mag = z(1);
    dir =  deg2rad(z(2));

    expression = mag*cos(dir) + 1i*mag*sin(dir);