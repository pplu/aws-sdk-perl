package Paws::ECS::PortMapping;
  use Moose;
  has ContainerPort => (is => 'ro', isa => 'Int', request_name => 'containerPort', traits => ['NameInRequest']);
  has HostPort => (is => 'ro', isa => 'Int', request_name => 'hostPort', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PortMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::PortMapping object:

  $service_obj->Method(Att1 => { ContainerPort => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::PortMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPort

=head1 DESCRIPTION

Port mappings allow containers to access ports on the host container
instance to send or receive traffic. Port mappings are specified as
part of the container definition.

If you are using containers in a task with the C<awsvpc> or C<host>
network mode, exposed ports should be specified using C<containerPort>.
The C<hostPort> can be left blank or it must be the same value as the
C<containerPort>.

After a task reaches the C<RUNNING> status, manual and automatic host
and container port assignments are visible in the C<networkBindings>
section of DescribeTasks API responses.

=head1 ATTRIBUTES


=head2 ContainerPort => Int

  The port number on the container that is bound to the user-specified or
automatically assigned host port.

If you are using containers in a task with the C<awsvpc> or C<host>
network mode, exposed ports should be specified using C<containerPort>.

If you are using containers in a task with the C<bridge> network mode
and you specify a container port and not a host port, your container
automatically receives a host port in the ephemeral port range. For
more information, see C<hostPort>. Port mappings that are automatically
assigned in this way do not count toward the 100 reserved ports limit
of a container instance.


=head2 HostPort => Int

  The port number on the container instance to reserve for your
container.

If you are using containers in a task with the C<awsvpc> or C<host>
network mode, the C<hostPort> can either be left blank or set to the
same value as the C<containerPort>.

If you are using containers in a task with the C<bridge> network mode,
you can specify a non-reserved host port for your container port
mapping, or you can omit the C<hostPort> (or set it to C<0>) while
specifying a C<containerPort> and your container automatically receives
a port in the ephemeral port range for your container instance
operating system and Docker version.

The default ephemeral port range for Docker version 1.6.0 and later is
listed on the instance under C</proc/sys/net/ipv4/ip_local_port_range>.
If this kernel parameter is unavailable, the default ephemeral port
range from 49153 through 65535 is used. Do not attempt to specify a
host port in the ephemeral port range as these are reserved for
automatic assignment. In general, ports below 32768 are outside of the
ephemeral port range.

The default ephemeral port range from 49153 through 65535 is always
used for Docker versions before 1.6.0.

The default reserved ports are 22 for SSH, the Docker ports 2375 and
2376, and the Amazon ECS container agent ports 51678-51680. Any host
port that was previously specified in a running task is also reserved
while the task is running (after a task stops, the host port is
released). The current reserved ports are displayed in the
C<remainingResources> of DescribeContainerInstances output. A container
instance can have up to 100 reserved ports at a time, including the
default reserved ports. Automatically assigned ports don't count toward
the 100 reserved ports limit.


=head2 Protocol => Str

  The protocol used for the port mapping. Valid values are C<tcp> and
C<udp>. The default is C<tcp>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

