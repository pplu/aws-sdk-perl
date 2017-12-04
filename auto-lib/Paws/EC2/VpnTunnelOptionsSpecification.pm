package Paws::EC2::VpnTunnelOptionsSpecification;
  use Moose;
  has PreSharedKey => (is => 'ro', isa => 'Str');
  has TunnelInsideCidr => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnTunnelOptionsSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnTunnelOptionsSpecification object:

  $service_obj->Method(Att1 => { PreSharedKey => $value, ..., TunnelInsideCidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnTunnelOptionsSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PreSharedKey

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 PreSharedKey => Str

  The pre-shared key (PSK) to establish initial authentication between
the virtual private gateway and customer gateway.

Constraints: Allowed characters are alphanumeric characters and ._.
Must be between 8 and 64 characters in length and cannot start with
zero (0).


=head2 TunnelInsideCidr => Str

  The range of inside IP addresses for the tunnel. Any specified CIDR
blocks must be unique across all VPN connections that use the same
virtual private gateway.

Constraints: A size /30 CIDR block from the C<169.254.0.0/16> range.
The following CIDR blocks are reserved and cannot be used:

=over

=item *

C<169.254.0.0/30>

=item *

C<169.254.1.0/30>

=item *

C<169.254.2.0/30>

=item *

C<169.254.3.0/30>

=item *

C<169.254.4.0/30>

=item *

C<169.254.5.0/30>

=item *

C<169.254.169.252/30>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
