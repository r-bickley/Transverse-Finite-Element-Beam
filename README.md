This project contains four tools that can be used to analyze the physical responses of a transverse beam composed of a user-specified number of finite elements. Finite elements are mathematical subdivisions within a beam. These gain particular physical significance when the beam analyzed does not have uniform properties. For this exercise, however, the beam considered will have uniform properties throughout.

The first function, k_gen, produces a stiffness matrix for a beam based on user-specified properties. These properties are the young's modulus of elasticity, the total length, the total mass, and the number of finite elements, or subdivisions.

The second, m_gen, produces a mass matrix for a beam based on user-specified properties. These properties are the density, the cross-sectional area, the total length, and the number of finite elements.

The third function, v_gen, accepts the stiffness and mass matrices as arguments, and finds the eigenvalues of the system that they represent.

The fourth, w_gen, accepts the eigenvalues and the number of finite elements, and finds the natural frequencies of the system represented by the given arguments.

The outline document contains a plan to generalize the two matrices, and a general plan.

Finally, the tfe_test.m script demonstrates the use of the four functions on a hypothetical beam with likely properties for steel.
