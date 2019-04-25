package Paws::EC2::VpnConnectionOptionsSpecification;
  use Moose;
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool', request_name => 'staticRoutesOnly', traits => ['NameInRequest']);
  has TunnelOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnTunnelOptionsSpecification]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnConnectionOptionsSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnConnectionOptionsSpecification object:

  $service_obj->Method(Att1 => { StaticRoutesOnly => $value, ..., TunnelOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnConnectionOptionsSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->StaticRoutesOnly

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 StaticRoutesOnly => Bool

  Indicate whether the VPN connection uses static routes only. If you are
creating a VPN connection for a device that does not support BGP, you
must specify C<true>. Use CreateVpnConnectionRoute to create a static
route.

Default: C<false>


=head2 TunnelOptions => ArrayRef[L<Paws::EC2::VpnTunnelOptionsSpecification>]

  The tunnel options for the VPN connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
