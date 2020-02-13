#include <stdlib.h>

#include "main/appInstance.hpp"

auto main(int argc, char *argv[]) -> int {
    return app::Instance::Execute(argc, argv);
}
