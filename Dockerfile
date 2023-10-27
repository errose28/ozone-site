# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ARG NODE_VERSION=20
FROM node:${NODE_VERSION}

# Used to build Node edependnecies into the image.
# The actual site will be mounted from a volume at runtime.
WORKDIR /ozone-site-deps
ENV NODE_PATH=/ozone-site-deps/node_modules
COPY package.json .
COPY package-lock.json .
RUN npm install
