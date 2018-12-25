
package Paws::GlobalAccelerator::CreateListener;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientAffinity => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortRange]', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::CreateListenerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateListener - Arguments for method CreateListener on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateListener on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method CreateListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateListener.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $CreateListenerResponse = $globalaccelerator->CreateListener(
      AcceleratorArn   => 'MyGenericString',
      IdempotencyToken => 'MyIdempotencyToken',
      PortRanges       => [
        {
          FromPort => 1,    # min: 1, max: 65535; OPTIONAL
          ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
        },
        ...
      ],
      Protocol       => 'TCP',
      ClientAffinity => 'NONE',    # OPTIONAL
    );

    # Results:
    my $Listener = $CreateListenerResponse->Listener;

    # Returns a L<Paws::GlobalAccelerator::CreateListenerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/CreateListener>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of your accelerator.



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

Valid values are: C<"NONE">, C<"SOURCE_IP">

=head2 B<REQUIRED> IdempotencyToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotencyE<mdash>that is, the uniquenessE<mdash>of the request.



=head2 B<REQUIRED> PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

The list of port ranges to support for connections from clients to your
accelerator.



=head2 B<REQUIRED> Protocol => Str

The protocol for connections from clients to your accelerator.

Valid values are: C<"TCP">, C<"UDP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateListener in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

