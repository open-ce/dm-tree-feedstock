# *****************************************************************
#
# Licensed Materials - Property of IBM
#
# (C) Copyright IBM Corp. 2020. All Rights Reserved.
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
#
# *****************************************************************
#!/bin/bash

${PYTHON} setup.py install --single-version-externally-managed --record record.txt

# Above call invokes bazel build. Ensure bazel is shutdown.
bazel shutdown
