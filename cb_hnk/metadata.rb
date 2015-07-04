name              "cb_hnk"
maintainer        "cb_hnk"
maintainer_email  "pax@lifeinmobile.com"
license           "LIM"
description       "S3 stuff"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0"
recipe            "cb_hnk::s3deploy", "S3 deploy"


%w{ amazon centos }.each do |os|
  supports os
end