% c is the coordinates of vector v in the canonical basis
% B is a basis with basis vectors having the same dimension as c
function[vb] = change_basis(c, B);
R = rank(B);
if(size(B, 2)>R)
    disp('B does not form a basis');
else
end
vb = B\c';
vb = vb';
