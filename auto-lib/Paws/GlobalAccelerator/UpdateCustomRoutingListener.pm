
package Paws::GlobalAccelerator::UpdateCustomRoutingListener;
  use Moose;
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortRange]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomRoutingListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateCustomRoutingListenerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingListener - Arguments for method UpdateCustomRoutingListener on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomRoutingListener on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateCustomRoutingListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomRoutingListener.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateCustomRoutingListenerResponse =
      $globalaccelerator->UpdateCustomRoutingListener(
      ListenerArn => 'MyGenericString',
      PortRanges  => [
        {
          FromPort => 1,    # min: 1, max: 65535; OPTIONAL
          ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Listener = $UpdateCustomRoutingListenerResponse->Listener;

# Returns a L<Paws::GlobalAccelerator::UpdateCustomRoutingListenerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateCustomRoutingListener>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener to update.



=head2 B<REQUIRED> PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

The updated port range to support for connections from clients to your
accelerator. If you remove ports that are currently being used by a
subnet endpoint, the call fails.

Separately, you set port ranges for endpoints. For more information,
see About endpoints for custom routing accelerators
(https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomRoutingListener in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

