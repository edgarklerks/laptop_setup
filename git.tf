resource "local_file" "git_configs" {
	source = "conf/gitconfig"
	filename = "${local.userdir}/.gitconfig"
	file_permission = "0444"
	depends_on = [terraform_data.local_scripts]
}

