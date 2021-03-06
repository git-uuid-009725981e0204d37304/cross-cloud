resource "packet_device" "masters" {
  hostname         = "${ var.name }-master${ count.index + 1 }"
  count            = "${ var.master_node_count }"
  facility         = "${ var.packet_facility }"
  project_id       = "${ var.packet_project_id }"
  plan             = "${ var.packet_master_device_plan }"
  billing_cycle    = "${ var.packet_billing_cycle }"
  operating_system = "${ var.packet_operating_system }"
  user_data        = "${ element(split(";", var.master_cloud_init), count.index) }"
}
