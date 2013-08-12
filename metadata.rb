maintainer "MarkUs Project"
maintainer_email "github@vialle.io"
license "GPLv3"
description "Installs bash"
version "0.1.0"

recipe "bash", "Installs bash and bash completion"

%w{ubuntu debian}.each do |os|
  supports os
end
