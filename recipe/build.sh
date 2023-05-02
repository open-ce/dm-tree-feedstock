#!/bin/bash
# *****************************************************************
# (C) Copyright IBM Corp. 2020, 2023. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************

source open-ce-common-utils.sh

${PYTHON} setup.py install --single-version-externally-managed --record record.txt


echo "Go back to source dir again"
cd $SRC_DIR/tree/abseil-cpp/src/abseil-cpp
echo "ls -l"
# Above call invokes bazel build. Ensure bazel is shutdown.
PID=$(bazel info server_pid)
echo "PID: $PID"
cleanup_bazel $PID

