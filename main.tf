terraform {
	required_providers {
		installer = {
			source = "shihanng/installer"
			version = "0.6.1"
		}
		local = {
			source = "hashicorp/local"
			version = "2.4.1"
		}
	}
}

resource "installer_apt" "packages" {
	for_each = toset(local.apps)
	name = each.key
}

resource "terraform_data" "local_scripts" {
	
	for_each = toset(local.scripts)
	provisioner "local-exec"  {
		command = "bash scripts/${each.key}"
	}
}
