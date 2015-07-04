#
# Cookbook Name:: s3_deploy
# Attributes:: s3_deploy
#
# Copyright 2012, HipSnip Ltd.
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
#

default['s3_deploy']['bucket'] = ''
default['s3_deploy']['deploy_root'] = '/home/web'
default['s3_deploy']['minimum_build_size'] = 100