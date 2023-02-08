# Custom VPC module

***This is a custom VPC module in which following are created.*** </br>

> Internet Gateway </br>
> Subnets </br>
> Elastic IP </br>
> NAT Gateway </br>
> Route tables </br>
> Routetable associations </br>
 </br>
</br>

This is created for multi tier deployments. </br>
 </br>
CIDR range can be fetched from variable assigned for multi-tier deployments where as the subnets are calculated based on the availability zones in a region which is also assigned in any multi-tier deployment code in which this VPC module is used.
 </br>
Both public and private subnets are created using the meta argument "count" in each subnet resource blocks.
  </br>
NAT Gateways are chosen optional in this module. For that, a boolean type variable is used with default value "true". With this default value, a NAT gateway with Elastic IP address will be created based on the meta-argument "depends_on" set after internet gateway.

</br> 
Route table associations are also setup using the meta argument "count" with both private and public subnets.

 </br>
  </br>
 These are the basic features in this VPC module.
  </br>
FYI, this can be applied for the scenarios like  [Three-tier wordpress deployment](https://github.com/Haashmi-h/Terraform-script-to-host-a-website)
