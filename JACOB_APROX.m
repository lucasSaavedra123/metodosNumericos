function JACOB = JACOB_APROX(H,X,epsilon)

if nargin == 2
    epsilon = sqrt(eps(1+norm(X)));
endif


quantityOfVariables = ( length(X) );
identityMatrix = eye(quantityOfVariables);
JACOB = zeros(quantityOfVariables);

for indexOfJ = 1:quantityOfVariables

    columnVectorJ = identityMatrix(:,indexOfJ);

    aproximationOfColumn = (H(X+epsilon*columnVectorJ) - H(X-epsilon*columnVectorJ));
    aproximationOfColumn = aproximationOfColumn / (2*epsilon);

    JACOB(:,indexOfJ) = aproximationOfColumn;

endfor