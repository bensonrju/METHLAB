function [phzr] = ToPhasor(z)

    magnitude = abs(z);
    angle = atan2d(imag(z), real(z));
    phzr = [magnitude angle];


