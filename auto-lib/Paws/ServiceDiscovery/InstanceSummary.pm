package Paws::ServiceDiscovery::InstanceSummary;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes');
  has Id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::InstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::InstanceSummary object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::InstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A complex type that contains information about the instances that you
registered by using a specified service.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::ServiceDiscovery::Attributes>

  A string map that contains the following information:

=over

=item *

The attributes that are associate with the instance.

=item *

For each attribute, the applicable value.

=back

Supported attribute keys include the following:

=over

=item *

C<AWS_ALIAS_DNS_NAME>: For an alias record that routes traffic to an
Elastic Load Balancing load balancer, the DNS name that is associated
with the load balancer.

=item *

C<AWS_INSTANCE_CNAME>: For a CNAME record, the domain name that Route
53 returns in response to DNS queries, for example, C<example.com>.

=item *

C<AWS_INSTANCE_IPV4>: For an A record, the IPv4 address that Route 53
returns in response to DNS queries, for example, C<192.0.2.44>.

=item *

C<AWS_INSTANCE_IPV6>: For an AAAA record, the IPv6 address that Route
53 returns in response to DNS queries, for example,
C<2001:0db8:85a3:0000:0000:abcd:0001:2345>.

=item *

C<AWS_INSTANCE_PORT>: For an SRV record, the value that Route 53
returns for the port. In addition, if the service includes
C<HealthCheckConfig>, the port on the endpoint that Route 53 sends
requests to.

=back



=head2 Id => Str

  The ID for an instance that you created by using a specified service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

