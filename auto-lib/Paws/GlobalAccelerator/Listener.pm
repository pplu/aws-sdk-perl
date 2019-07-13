package Paws::GlobalAccelerator::Listener;
  use Moose;
  has ClientAffinity => (is => 'ro', isa => 'Str');
  has ListenerArn => (is => 'ro', isa => 'Str');
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortRange]');
  has Protocol => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::Listener object:

  $service_obj->Method(Att1 => { ClientAffinity => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientAffinity

=head1 DESCRIPTION

A complex type for a listener.

=head1 ATTRIBUTES


=head2 ClientAffinity => Str

  Client affinity lets you direct all requests from a user to the same
endpoint, if you have stateful applications, regardless of the port and
protocol of the client request. Clienty affinity gives you control over
whether to always route each client to the same specific endpoint.

AWS Global Accelerator uses a consistent-flow hashing algorithm to
choose the optimal endpoint for a connection. If client affinity is
C<NONE>, Global Accelerator uses the "five-tuple" (5-tuple)
propertiesE<mdash>source IP address, source port, destination IP
address, destination port, and protocolE<mdash>to select the hash
value, and then chooses the best endpoint. However, with this setting,
if someone uses different ports to connect to Global Accelerator, their
connections might not be always routed to the same endpoint because the
hash value changes.

If you want a given client to always be routed to the same endpoint,
set client affinity to C<SOURCE_IP> instead. When you use the
C<SOURCE_IP> setting, Global Accelerator uses the "two-tuple" (2-tuple)
propertiesE<mdash> source (client) IP address and destination IP
addressE<mdash>to select the hash value.

The default value is C<NONE>.


=head2 ListenerArn => Str

  The Amazon Resource Name (ARN) of the listener.


=head2 PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

  The list of port ranges for the connections from clients to the
accelerator.


=head2 Protocol => Str

  The protocol for the connections from clients to the accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

