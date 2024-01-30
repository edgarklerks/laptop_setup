resource "local_file" "fish_configs" {
	for_each = toset(local.fish_configs)
	source = "conf/${each.key}.fish"
	filename = "${local.userdir}/.config/fish/conf.d/${each.key}.fish"
	file_permission = "0444"
	depends_on = [terraform_data.local_scripts]
}

