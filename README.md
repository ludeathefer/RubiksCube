# Rubik's Cube Visualizer

A simple Rubik's Cube visualizer built using Processing for a computer graphics project. This project is based on "The Coding Train"'s Rubik's Cube challenge, with some modifications to fit my approach.

## Features

- **3D Cube Visualization**: View a 3D representation of the Rubik's Cube.
- **Face Rotations**: Perform all standard face rotations on a single face.
- **Random Scramble**: Generate a random sequence of moves to scramble the cube.
- **Auto-Unscramble**: Reverse the generated scramble sequence to return the cube to its solved state.
  - Note: The cube can only be unscrambled if scrambled using the built-in function. Manually scrambled states cannot be solved.

## Limitations

- Only one face can be rotated.
- Custom scrambles cannot be solved automatically.
- No keyboard or mouse interaction support (if applicable).

## Installation & Usage

1. Download and install [Processing](https://processing.org/download/).
2. Clone or download this repository.
3. Open the `.pde` file in Processing.
4. Run the sketch to visualize and interact with the cube.

## Acknowledgments

- Inspired by [The Coding Train](https://www.youtube.com/c/TheCodingTrain)'s Rubik's Cube challenge.

## Future Improvements

- Implement full cube rotation.
- Allow interaction with multiple faces.
- Add support for solving custom scrambles.
