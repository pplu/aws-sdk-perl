package Paws::ServiceDiscovery::DnsRecord;
  use Moose;
  has TTL => (is => 'ro', isa => 'Int', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DnsRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::DnsRecord object:

  $service_obj->Method(Att1 => { TTL => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::DnsRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->TTL

=head1 DESCRIPTION

A complex type that contains information about the resource record sets
that you want Amazon Route 53 to create when you register an instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TTL => Int

  The amount of time, in seconds, that you want DNS resolvers to cache
the settings for this resource record set.


=head2 B<REQUIRED> Type => Str

  The type of the resource, which indicates the value that Amazon Route
53 returns in response to DNS queries. The following values are
supported:

=over

=item *

B<A>: Amazon Route 53 returns the IP address of the resource in IPv4
format, such as 192.0.2.44.

=item *

B<AAAA>: Amazon Route 53 returns the IP address of the resource in IPv6
format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345.

=item *

B<SRV>: Amazon Route 53 returns the value for an SRV record. The value
for an SRV record uses the following template, which can't be changed:

C<priority weight port resource-record-set-name>

The values of C<priority> and C<weight> are both set to 1. The value of
port comes from the value that you specify for C<Port> when you submit
a RegisterInstance request.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

