//zlib license, 8l, 2016

#include <GLFW/glfw3.h>

GLFWwindow* w;

inline int run()
{
  /* Initialize the library */
  if (!glfwInit())
      return -1;

  /* Create a windowed mode window and its OpenGL context */
  w = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
  if (!w)
  {
    glfwTerminate();
    return -1;
  }

  /* Make the window's context current */
  glfwMakeContextCurrent(w);

  /* Loop until the user closes the window */
  while (!glfwWindowShouldClose(w))
  {
    /* Render here */
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    /* Swap front and back buffers */
    glfwSwapBuffers(w);

    /* Poll for and process events */
    glfwPollEvents();
  }

  glfwTerminate();
  return 0;
}
