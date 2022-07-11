provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "OS Management Service Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "VXpT:US-ASHBURN-AD-1"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaa6q6b7234r6urb67ztkt3osjy7dzod5svjd3mlgulacpklcnwtrda"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "${oci_core_subnet.generated_oci_core_subnet.id}"
	}
	display_name = "stack-with-init"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"user_data" = "I2Nsb3VkLWNvbmZpZwp0aW1lem9uZTogQXNpYS9Ub2t5bwoKcnVuY21kOgojIEFkZCBpbml0aWFsIGNvbmZpZ3VyYXRpb25zIHRvIGJhc2ggYW5kIHZpbQojIHdyaXRlX2ZpbGVzIG1vZHVsZSB3YXNuJ3QgZWZmZWN0aXZlIGJlY2F1c2UgaXQgY2hhbmdlZCB0aGUgb3duZXIgb2YgL2hvbWUvb3BjIGRpcmVjdG9yeSB0byByb290CiAgLSBlY2hvICIiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID4+IC9ob21lL29wYy8uYmFzaF9wcm9maWxlCiAgLSBlY2hvICIjIExpbmVzIHVuZGVyIHdlcmUgYWRkZWQgYnkgY2xvdWQtaW5pdCIgID4+IC9ob21lL29wYy8uYmFzaF9wcm9maWxlCiAgLSBlY2hvICJleHBvcnQgSElTVFNJWkU9MTAwMDAiICAgICAgICAgICAgICAgICAgID4+IC9ob21lL29wYy8uYmFzaF9wcm9maWxlCiAgLSBlY2hvICJzZXQgLW8gdmkiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID4+IC9ob21lL29wYy8uYmFzaF9wcm9maWxlCgogIC0gZWNobyAiIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA+PiAvcm9vdC8uYmFzaF9wcm9maWxlCiAgLSBlY2hvICIjIExpbmVzIHVuZGVyIHdlcmUgYWRkZWQgYnkgY2xvdWQtaW5pdCIgID4+IC9yb290Ly5iYXNoX3Byb2ZpbGUKICAtIGVjaG8gImV4cG9ydCBISVNUU0laRT0xMDAwMCIgICAgICAgICAgICAgICAgICAgPj4gL3Jvb3QvLmJhc2hfcHJvZmlsZQogIC0gZWNobyAic2V0IC1vIHZpIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA+PiAvcm9vdC8uYmFzaF9wcm9maWxlCgogIC0gZWNobyAiXCIgTGluZXMgdW5kZXIgd2VyZSBhZGRlZCBieSBjbG91ZC1pbml0IiA+PiAvaG9tZS9vcGMvLnZpbXJjCiAgLSBlY2hvICJzeW50YXggb2ZmIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID4+IC9ob21lL29wYy8udmltcmMKICAtIGVjaG8gInNldCBudW1iZXIiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPj4gL2hvbWUvb3BjLy52aW1yYwogIC0gZWNobyAic2V0IHRpdGxlIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA+PiAvaG9tZS9vcGMvLnZpbXJjCiAgLSBjaG93biBvcGM6b3BjICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9ob21lL29wYy8udmltcmMKCiAgLSBlY2hvICJcIiBMaW5lcyB1bmRlciB3ZXJlIGFkZGVkIGJ5IGNsb3VkLWluaXQiID4+IC9yb290Ly52aW1yYwogIC0gZWNobyAic3ludGF4IG9mZiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA+PiAvcm9vdC8udmltcmMKICAtIGVjaG8gInNldCBudW1iZXIiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPj4gL3Jvb3QvLnZpbXJjCiAgLSBlY2hvICJzZXQgdGl0bGUiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID4+IC9yb290Ly52aW1yYwo="
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCf5pkef2csDdtiZPuiz9KmwxJcXvkKrkEFEQGI44phzDxjwrtXmvxBFqly8zgUdF7ECtAu+hl53DAwjJLuZd2UpWpC4H5WSD1QluDoP6DG7cPYT3aczrrldAphyiphjl7Uz26Yb16vov9ul+/zdCokWPPBd8IVeGytrRdDf///dpyXw7jTv0I9ukis5Y6MzapxHKZKj54SH/SFZp9clcG2o4xcK+FAMlboWif3zYn8fB0Ca98ObqlhLI+ME8QAKrshDUXqYyjVmARXNz7IHhiMO5sALgjpOPM8nV3byLz+pDH1Nzl2anrz1bN/Rx0w5LFk1wbRiTo1Mae1imKWlcZUay6ts686ubYDG5HupUBW/va5cmNnnSnxy+U3VXllbQj9vWDbfi2Tw17I/4HzI2qNtaDpLzpiKHxIWuWqM35GiRWmwDZwjxM0a+RUFGvvqtLiuIUGC7UGOJ2IjTV0Ao22n3alZF5E4h6sPy/9Y87pUDFoy6pcVePDevybBAnEaNU= opc@TMIYASHI-7420"
	}
	shape = "VM.Standard.E4.Flex"
	shape_config {
		memory_in_gbs = "16"
		ocpus = "1"
	}
	source_details {
		source_id = "ocid1.image.oc1.iad.aaaaaaaaueyjkij7hhvyofeqw5l3efhead27amqvv6dxeq2cbi5ho65iud3a"
		source_type = "image"
	}
}

resource "oci_core_vcn" "generated_oci_core_vcn" {
	cidr_block = "10.0.0.0/16"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaa6q6b7234r6urb67ztkt3osjy7dzod5svjd3mlgulacpklcnwtrda"
	display_name = "vcn-20220711-1215"
	dns_label = "vcn07111216"
}

resource "oci_core_subnet" "generated_oci_core_subnet" {
	cidr_block = "10.0.0.0/24"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaa6q6b7234r6urb67ztkt3osjy7dzod5svjd3mlgulacpklcnwtrda"
	display_name = "subnet-20220711-1215"
	dns_label = "subnet07111216"
	route_table_id = "${oci_core_vcn.generated_oci_core_vcn.default_route_table_id}"
	vcn_id = "${oci_core_vcn.generated_oci_core_vcn.id}"
}

resource "oci_core_internet_gateway" "generated_oci_core_internet_gateway" {
	compartment_id = "ocid1.compartment.oc1..aaaaaaaa6q6b7234r6urb67ztkt3osjy7dzod5svjd3mlgulacpklcnwtrda"
	display_name = "Internet Gateway vcn-20220711-1215"
	enabled = "true"
	vcn_id = "${oci_core_vcn.generated_oci_core_vcn.id}"
}

resource "oci_core_default_route_table" "generated_oci_core_default_route_table" {
	route_rules {
		destination = "0.0.0.0/0"
		destination_type = "CIDR_BLOCK"
		network_entity_id = "${oci_core_internet_gateway.generated_oci_core_internet_gateway.id}"
	}
	manage_default_resource_id = "${oci_core_vcn.generated_oci_core_vcn.default_route_table_id}"
}
