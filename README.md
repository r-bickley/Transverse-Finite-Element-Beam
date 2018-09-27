  This project contains tools that can be used to analyze the natural frequencies of a transverse, cylindrical, uniform beam. The primary tool to perform this analysis is an included function, elemental_equations.m. This function accepts the young's modulus for the beam material, the moment of inertia, the length of the beam, and the linear density of the beam as parameters.
  The function builds the elemental mass and stiffness matrices (M_soln & K_soln) for a beam with two fully-defined nodes (displacement and angle are accounted for at each end of the beam). Then, it solves the eigenvalue problem using the two matrices as inputs. Finally, it takes the square root of the resulting vector. This produces a vector containing the natural frequencies at the two nodes.
  This function operates under limits that restrict the accuracy of the results. Simply performing this calculation with two nodes is not a true representation of a physical beam, which is a continuous object. In Euler-Bernoulli beam theory, a true beam effectively contains infinite nodes. For this reason, the results output by elemental_equations.m are only approximations of the true natural frequencies of the system. However, they are calculated to a reasonable degree of accuracy, and we can accept them knowing that as the number of nodes included in our finite element analysis approaches infinity, the calculated natural frequency will approach the true natural frequency.
    This has been verified by a comparison between an Euler - Bernoulli calculation and the output of the function for the (physically improbable, but convenient) case where the young's modulus, moment of inertia, beam length, and linear density are all equal to 1 (in mks units). The Euler - Bernoulli calculation yields the following:
   w_1 = 2.030 rad/s
   w_3 = 35.6231 rad/s
   
   Euler - Bernoulli also provides the necessary framework to calculate the frequency at a third node in the middle of the beam. This value is w_2 = 12.721 rad/s. The elemental_equations function does not yield this result, because it simply accounts for the beam's two outer nodes. For the frequencies corresponding to w_1 and w_3 above, the finite element analysis method produces:
   w_1 = 3.5327
   w_3 = 34.8069
   
   These caluclations can be repeated using more realistic E,I,L, and rho values, to a similar result. While these values are visibly different, they do serve as a proof of concept. Future work in this area might generalize the stiffness and mass matrices to be of any size, allowing for a user to specify n, the desired number of nodes. Other included functions, m_gen and k_gen, attempt this generalization, but are not incorporated into the final functional product.

  Works cited & acknowledgements:
  -Wikipedia: Euler - Bernoulli Beam Theory https://en.wikipedia.org/wiki/Euler–Bernoulli_beam_theory
  -UConn School of Engineering Professor Ryan Cooper https://github.uconn.edu/rcc02007
  -Engineering Vibrations (Textbook) https://www.amazon.com/Engineering-Vibration-4th-Daniel-Inman/dp/0132871696
