
package Paws::GlobalAccelerator::UpdateListener;
  use Moose;
  has ClientAffinity => (is => 'ro', isa => 'Str');
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortRange]');
  has Protocol => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateListenerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateListener - Arguments for method UpdateListener on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateListener on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateListener.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateListenerResponse = $globalaccelerator->UpdateListener(
      ListenerArn    => 'MyGenericString',
      ClientAffinity => 'NONE',              # OPTIONAL
      PortRanges     => [
        {
          FromPort => 1,                     # min: 1, max: 65535; OPTIONAL
          ToPort   => 1,                     # min: 1, max: 65535; OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
      Protocol => 'TCP',                     # OPTIONAL
    );

    # Results:
    my $Listener = $UpdateListenerResponse->Listener;

    # Returns a L<Paws::GlobalAccelerator::UpdateListenerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateListener>

=head1 ATTRIBUTES


=head2 ClientAffinity => Str

Client affinity lets you direct all requests from a user to the same
endpoint, if you have stateful applications, regardless of the source
port and protocol of the user request. This gives you control over
whether and how to maintain client affinity to a given endpoint.

The default value is C<NONE>.

Valid values are: C<"NONE">, C<"SOURCE_IP">

=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener to update.



=head2 PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

The updated list of port ranges for the connections from clients to the
accelerator.



=head2 Protocol => Str

The updated protocol for the connections from clients to the
accelerator.

Valid values are: C<"TCP">, C<"UDP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateListener in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

