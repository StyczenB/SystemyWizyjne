close all; clear all;
lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure(1)
imshow(lena, [])

figure(2)
imshow(jet, [])

% Dodanie dwoch obrazow
lena_jet = imadd(lena, jet);
lena_jet_uint16 = imadd(lena, jet, 'uint16');

figure(3)
imshow(lena_jet, [])

figure(4)
imshow(lena_jet_uint16, [])

% Kombinacja
lena_jet_comb = imlincomb(0.45, lena, 3, jet, 'uint16');
figure(5)
imshow(lena_jet_comb, [])

lena_jet_comb = imlincomb(0.7, lena, log(3), jet, 'uint16');
figure(6)
imshow(lena_jet_comb, [])

% Odejmowanie
lena_jet_sub = imsubtract(lena, jet);
figure(7)
imshow(lena_jet_sub, [])

lena_jet_sub = imsubtract(int16(lena), int16(jet));
figure(8)
imshow(lena_jet_sub, [])

lena_jet_sub = imabsdiff(int16(lena), int16(jet));
figure(7)
imshow(lena_jet_sub, [])

% Mnozenie
multi = immultiply(uint16(jet), uint16(lena));
figure(8)
imshow(multi, [])

% Mnozenie przez maske
mask = imread('kolo.bmp');
mask = boolean(mask);
figure(9)
imshow(immultiply(uint16(jet), mask), [])

% Negatyw
figure(10)
imshow(imcomplement(lena), [])


