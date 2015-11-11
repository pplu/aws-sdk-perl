package Paws::ECS::PortMapping;
  use Moose;
  has ContainerPort => (is => 'ro', isa => 'Int', xmlname => 'containerPort', request_name => 'containerPort', traits => ['Unwrapped','NameInRequest']);
  has HostPort => (is => 'ro', isa => 'Int', xmlname => 'hostPort', request_name => 'hostPort', traits => ['Unwrapped','NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', xmlname => 'protocol', request_name => 'protocol', traits => ['Unwrapped','NameInRequest']);
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
part of the container definition. After a task reaches the C<RUNNING>
status, manual and automatic host and container port assignments are
visible in the C<networkBindings> section of DescribeTasks API
responses.

=head1 ATTRIBUTES


=head2 ContainerPort => Int

  The port number on the container that is bound to the user-specified or
automatically assigned host port. If you specify a container port and
not a host port, your container automatically receives a host port in
the ephemeral port range (for more information, see C<hostPort>).


=head2 HostPort => Int

  The port number on the container instance to reserve for your
container. You can specify a non-reserved host port for your container
port mapping, or you can omit the C<hostPort> (or set it to C<0>) while
specifying a C<containerPort> and your container automatically receives
a port in the ephemeral port range for your container instance
operating system and Docker version.

The default ephemeral port range is 49153 to 65535, and this range is
used for Docker versions prior to 1.6.0. For Docker version 1.6.0 and
later, the Docker daemon tries to read the ephemeral port range from
C</proc/sys/net/ipv4/ip_local_port_range>; if this kernel parameter is
unavailable, the default ephemeral port range is used. You should not
attempt to specify a host port in the ephemeral port range, because
these are reserved for automatic assignment. In general, ports below
32768 are outside of the ephemeral port range.

The default reserved ports are 22 for SSH, the Docker ports 2375 and
2376, and the Amazon ECS container agent port 51678. Any host port that
was previously specified in a running task is also reserved while the
task is running (after a task stops, the host port is released).The
current reserved ports are displayed in the C<remainingResources> of
DescribeContainerInstances output, and a container instance may have up
to 50 reserved ports at a time, including the default reserved ports
(automatically assigned ports do not count toward this limit).


=head2 Protocol => Str

  The protocol used for the port mapping. Valid values are C<tcp> and
C<udp>. The default is C<tcp>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

