package Paws::ECS::ProxyConfiguration;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest'], required => 1);
  has Properties => (is => 'ro', isa => 'ArrayRef[Paws::ECS::KeyValuePair]', request_name => 'properties', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ProxyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ProxyConfiguration object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ProxyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

The configuration details for the App Mesh proxy.

For tasks using the EC2 launch type, the container instances require at
least version 1.26.0 of the container agent and at least version
1.26.0-1 of the C<ecs-init> package to enable a proxy configuration. If
your container instances are launched from the Amazon ECS-optimized AMI
version C<20190301> or later, then they contain the required versions
of the container agent and C<ecs-init>. For more information, see
Amazon ECS-optimized Linux AMI
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
in the I<Amazon Elastic Container Service Developer Guide>.

This parameter is available for tasks using the Fargate launch type in
the Ohio (us-east-2) region only and the task or service requires
platform version 1.3.0 or later.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

  The name of the container that will serve as the App Mesh proxy.


=head2 Properties => ArrayRef[L<Paws::ECS::KeyValuePair>]

  The set of network configuration parameters to provide the Container
Network Interface (CNI) plugin, specified as key-value pairs.

=over

=item *

C<IgnoredUID> - (Required) The user ID (UID) of the proxy container as
defined by the C<user> parameter in a container definition. This is
used to ensure the proxy ignores its own traffic. If C<IgnoredGID> is
specified, this field can be empty.

=item *

C<IgnoredGID> - (Required) The group ID (GID) of the proxy container as
defined by the C<user> parameter in a container definition. This is
used to ensure the proxy ignores its own traffic. If C<IgnoredGID> is
specified, this field can be empty.

=item *

C<AppPorts> - (Required) The list of ports that the application uses.
Network traffic to these ports is forwarded to the C<ProxyIngressPort>
and C<ProxyEgressPort>.

=item *

C<ProxyIngressPort> - (Required) Specifies the port that incoming
traffic to the C<AppPorts> is directed to.

=item *

C<ProxyEgressPort> - (Required) Specifies the port that outgoing
traffic from the C<AppPorts> is directed to.

=item *

C<EgressIgnoredPorts> - (Required) The egress traffic going to the
specified ports is ignored and not redirected to the
C<ProxyEgressPort>. It can be an empty list.

=item *

C<EgressIgnoredIPs> - (Required) The egress traffic going to the
specified IP addresses is ignored and not redirected to the
C<ProxyEgressPort>. It can be an empty list.

=back



=head2 Type => Str

  The proxy type. The only supported value is C<APPMESH>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

