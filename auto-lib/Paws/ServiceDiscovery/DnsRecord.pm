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

A complex type that contains information about the Route 53 DNS records
that you want AWS Cloud Map to create when you register an instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TTL => Int

  The amount of time, in seconds, that you want DNS resolvers to cache
the settings for this record.

Alias records don't include a TTL because Route 53 uses the TTL for the
AWS resource that an alias record routes traffic to. If you include the
C<AWS_ALIAS_DNS_NAME> attribute when you submit a RegisterInstance
request, the C<TTL> value is ignored. Always specify a TTL for the
service; you can use a service to register instances that create either
alias or non-alias records.


=head2 B<REQUIRED> Type => Str

  The type of the resource, which indicates the type of value that Route
53 returns in response to DNS queries.

Note the following:

=over

=item *

B<A, AAAA, and SRV records:> You can specify settings for a maximum of
one A, one AAAA, and one SRV record. You can specify them in any
combination.

=item *

B<CNAME records:> If you specify C<CNAME> for C<Type>, you can't define
any other records. This is a limitation of DNS: you can't create a
CNAME record and any other type of record that has the same name as a
CNAME record.

=item *

B<Alias records:> If you want AWS Cloud Map to create a Route 53 alias
record when you register an instance, specify C<A> or C<AAAA> for
C<Type>.

=item *

B<All records:> You specify settings other than C<TTL> and C<Type> when
you register an instance.

=back

The following values are supported:

B<A>

Route 53 returns the IP address of the resource in IPv4 format, such as
192.0.2.44.

B<AAAA>

Route 53 returns the IP address of the resource in IPv6 format, such as
2001:0db8:85a3:0000:0000:abcd:0001:2345.

B<CNAME>

Route 53 returns the domain name of the resource, such as
www.example.com. Note the following:

=over

=item *

You specify the domain name that you want to route traffic to when you
register an instance. For more information, see
RegisterInstanceRequest$Attributes.

=item *

You must specify C<WEIGHTED> for the value of C<RoutingPolicy>.

=item *

You can't specify both C<CNAME> for C<Type> and settings for
C<HealthCheckConfig>. If you do, the request will fail with an
C<InvalidInput> error.

=back

B<SRV>

Route 53 returns the value for an SRV record. The value for an SRV
record uses the following values:

C<priority weight port service-hostname>

Note the following about the values:

=over

=item *

The values of C<priority> and C<weight> are both set to C<1> and can't
be changed.

=item *

The value of C<port> comes from the value that you specify for the
C<AWS_INSTANCE_PORT> attribute when you submit a RegisterInstance
request.

=item *

The value of C<service-hostname> is a concatenation of the following
values:

=over

=item *

The value that you specify for C<InstanceId> when you register an
instance.

=item *

The name of the service.

=item *

The name of the namespace.

=back

For example, if the value of C<InstanceId> is C<test>, the name of the
service is C<backend>, and the name of the namespace is C<example.com>,
the value of C<service-hostname> is:

C<test.backend.example.com>

=back

If you specify settings for an SRV record and if you specify values for
C<AWS_INSTANCE_IPV4>, C<AWS_INSTANCE_IPV6>, or both in the
C<RegisterInstance> request, AWS Cloud Map automatically creates C<A>
and/or C<AAAA> records that have the same name as the value of
C<service-hostname> in the SRV record. You can ignore these records.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

