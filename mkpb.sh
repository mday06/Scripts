#!/bin/sh

# Create folder
mkdir $1 && cd $1

# Create build file
touch build.sh && chmod +x build.sh && echo '#!/bin/sh \n\n set -xe \n\n c++ -Wall -Wextra -o sol main.cpp' > build.sh

# Create main.cpp template
touch main.cpp && echo '#include <iostream>\n\nusing namespace std;\n\nint main()\n{\n	\n\n	return 0;\n}' > main.cpp
