package Paws::DirectConnect::RouteFilterPrefix;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::RouteFilterPrefix

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::RouteFilterPrefix object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., Cidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::RouteFilterPrefix object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

A route filter prefix that the customer can advertise through Border
Gateway Protocol (BGP) over a public virtual interface.

=head1 ATTRIBUTES


=head2 Cidr => Str

  CIDR notation for the advertised route. Multiple routes are separated
by commas.

IPv6 CIDRs must be at least a /64 or shorter

Example: 10.10.10.0/24,10.10.11.0/24,2001:db8::/64



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

