#!/usr/bin/env python3
from string import Template
from argparse import ArgumentParser

parser = ArgumentParser(description="Create homebrew formula from template")
parser.add_argument("--version", help="Version to set (without leading v)", required=True)
parser.add_argument("--sha256-mac-arm", help="SHA256 checksum for darwin-arm64 archive", required=True)
parser.add_argument("--sha256-mac-amd", help="SHA256 checksum for darwin-amd64 archive", required=True)

args = parser.parse_args()

data = {
    "version": args.version,
    "sha256_mac_arm": args.sha256_mac_arm,
    "sha256_mac_amd": args.sha256_mac_amd,
}

formula_template = None
with open("formula.template", "r") as template_file:
    formula_template = "".join(template_file.readlines())

tpl = Template(formula_template)
formula = tpl.substitute(data)

with open("ContainerHive.rb", "w") as formula_file:
    formula_file.write(formula)
