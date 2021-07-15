#include <iostream>
#include <Eigen/Core>
#include <Eigen/Eigenvalues>

// import most common Eigen types 
/* 
g++ -I/data/data/com.termux/files/usr/include/eigen3/ matrix.cpp -o matrix
*/
//
using namespace Eigen;

int main(int, char *[])
{
  MatrixXd mx;
//mx = MatrixXd::Identity();
  mx = MatrixXd::Random(6,6);
  std::cout << mx << std::endl;
  mx << 4, 2, 0, 3, 5, 5,
        1, 5, 5, 6, 9, 4,
	2, 9, 7, 4, 3, 3,
	8, 0, 0, 4, 7, 7,
	7, 4, 9, 2, 5, 0,
	8, 0, 0, 7, 7, 9;
//
//
  std::cout << mx << std::endl;
  EigenSolver<MatrixXd> es(mx);
  std::cout << "The eigenvalues of matrix are:" 
	    << std::endl 
	    << es.eigenvalues() << std::endl;
  std::cout << "The matrix of eigenvectors, is:" 
	    << std::endl 
	    << es.eigenvectors() 
	    << std::endl << std::endl;

}
