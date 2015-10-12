package Paws::WAF::IPSetDescriptor;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::IPSetDescriptor

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::IPSetDescriptor object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::IPSetDescriptor object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 ATTRIBUTES

=head2 B<REQUIRED> Type => Str

  

Specify C<IPV4>.










=head2 B<REQUIRED> Value => Str

  

Specify an IPv4 address by using CIDR notation. For example:

=over

=item * To configure AWS WAF to allow, block, or count requests that
originated from the IP address 192.0.2.44, specify C<192.0.2.44/32>.

=item * To configure AWS WAF to allow, block, or count requests that
originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
C<192.0.2.0/24>.

=back

AWS WAF supports only /8, /16, /24, and /32 IP addresses.

For more information about CIDR notation, see the Wikipedia entry
Classless Inter-Domain Routing.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

