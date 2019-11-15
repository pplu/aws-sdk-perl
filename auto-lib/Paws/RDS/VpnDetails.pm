package Paws::RDS::VpnDetails;
  use Moose;
  has VpnGatewayIp => (is => 'ro', isa => 'Str');
  has VpnId => (is => 'ro', isa => 'Str');
  has VpnName => (is => 'ro', isa => 'Str');
  has VpnPSK => (is => 'ro', isa => 'Str');
  has VpnState => (is => 'ro', isa => 'Str');
  has VpnTunnelOriginatorIP => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::VpnDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::VpnDetails object:

  $service_obj->Method(Att1 => { VpnGatewayIp => $value, ..., VpnTunnelOriginatorIP => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::VpnDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->VpnGatewayIp

=head1 DESCRIPTION

Information about the virtual private network (VPN) between the VMware
vSphere cluster and the AWS website.

For more information about RDS on VMware, see the I<RDS on VMware User
Guide.>
(https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)

=head1 ATTRIBUTES


=head2 VpnGatewayIp => Str

  The IP address of network traffic from AWS to your on-premises data
center.


=head2 VpnId => Str

  The ID of the VPN.


=head2 VpnName => Str

  The name of the VPN.


=head2 VpnPSK => Str

  The preshared key (PSK) for the VPN.


=head2 VpnState => Str

  The state of the VPN.


=head2 VpnTunnelOriginatorIP => Str

  The IP address of network traffic from your on-premises data center. A
custom AZ receives the network traffic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

