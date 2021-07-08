
package Paws::GlobalAccelerator::AddCustomRoutingEndpoints;
  use Moose;
  has EndpointConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CustomRoutingEndpointConfiguration]', required => 1);
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCustomRoutingEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::AddCustomRoutingEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AddCustomRoutingEndpoints - Arguments for method AddCustomRoutingEndpoints on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddCustomRoutingEndpoints on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method AddCustomRoutingEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddCustomRoutingEndpoints.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $AddCustomRoutingEndpointsResponse =
      $globalaccelerator->AddCustomRoutingEndpoints(
      EndpointConfigurations => [
        {
          EndpointId => 'MyGenericString',    # max: 255; OPTIONAL
        },
        ...
      ],
      EndpointGroupArn => 'MyGenericString',

      );

    # Results:
    my $EndpointDescriptions =
      $AddCustomRoutingEndpointsResponse->EndpointDescriptions;
    my $EndpointGroupArn = $AddCustomRoutingEndpointsResponse->EndpointGroupArn;

# Returns a L<Paws::GlobalAccelerator::AddCustomRoutingEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/AddCustomRoutingEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingEndpointConfiguration>]

The list of endpoint objects to add to a custom routing accelerator.



=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group for the custom
routing endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddCustomRoutingEndpoints in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

