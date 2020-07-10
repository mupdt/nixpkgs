{ stdenv, fetchFromGitHub, buildGoModule }:

#
# USAGE:
# install the following package globally or in nix-shell:
#
#   (terraform.withPlugins ( plugins: [ plugins.shell ]))
#
# examples:
# https://github.com/scottwinkler/terraform-provider-shell/tree/master/examples
#

buildGoModule rec {
  pname = "terraform-provider-shell";
  version = "1.6.0";

  src = fetchFromGitHub {
    owner = "scottwinkler";
    repo   = pname;
    rev    = "v${version}";
    sha256 = "0jxb30vw93ibnwz8nfqapac7p9r2famzvsf2h4nfbmhkm6mpan4l";
  };

  vendorSha256 = "1p2ja6cw3dl7mx41svri6frjpgb9pxsrl7sq0rk1d3sviw0f88sg";

  meta = with stdenv.lib; {
    inherit (src.meta) homepage;
    description = "Terraform provider for executing shell commands and saving output to state file";
    changelog = "https://github.com/scottwinkler/terraform-provider-shell/releases/tag/v${version}";
    license = licenses.mpl20;
    maintainers = with maintainers; [ mupdt ];
  };
}
