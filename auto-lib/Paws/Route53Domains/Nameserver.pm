package Paws::Route53Domains::Nameserver;
  use Moose;
  has GlueIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::Nameserver

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::Nameserver object:

  $service_obj->Method(Att1 => { GlueIps => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::Nameserver object:

  $result = $service_obj->Method(...);
  $result->Att1->GlueIps

=head1 DESCRIPTION

Nameserver includes the following elements.

=head1 ATTRIBUTES


=head2 GlueIps => ArrayRef[Str|Undef]

  Glue IP address of a name server entry. Glue IP addresses are required
only when the name of the name server is a subdomain of the domain. For
example, if your domain is example.com and the name server for the
domain is ns.example.com, you need to specify the IP address for
ns.example.com.

Constraints: The list can contain only one IPv4 and one IPv6 address.


=head2 B<REQUIRED> Name => Str

  The fully qualified host name of the name server.

Constraint: Maximum 255 characters



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

