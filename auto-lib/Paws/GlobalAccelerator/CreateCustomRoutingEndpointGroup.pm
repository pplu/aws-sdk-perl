
package Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroup;
  use Moose;
  has DestinationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CustomRoutingDestinationConfiguration]', required => 1);
  has EndpointGroupRegion => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomRoutingEndpointGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroup - Arguments for method CreateCustomRoutingEndpointGroup on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomRoutingEndpointGroup on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method CreateCustomRoutingEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomRoutingEndpointGroup.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $CreateCustomRoutingEndpointGroupResponse =
      $globalaccelerator->CreateCustomRoutingEndpointGroup(
      DestinationConfigurations => [
        {
          FromPort  => 1,    # min: 1, max: 65535
          Protocols => [
            'TCP', ...       # values: TCP, UDP
          ],                 # min: 1, max: 2
          ToPort => 1,       # min: 1, max: 65535

        },
        ...
      ],
      EndpointGroupRegion => 'MyGenericString',
      IdempotencyToken    => 'MyIdempotencyToken',
      ListenerArn         => 'MyGenericString',

      );

    # Results:
    my $EndpointGroup =
      $CreateCustomRoutingEndpointGroupResponse->EndpointGroup;

# Returns a L<Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/CreateCustomRoutingEndpointGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationConfigurations => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingDestinationConfiguration>]

Sets the port range and protocol for all endpoints (virtual private
cloud subnets) in a custom routing endpoint group to accept client
traffic on.



=head2 B<REQUIRED> EndpointGroupRegion => Str

The AWS Region where the endpoint group is located. A listener can have
only one endpoint group in a specific Region.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotencyE<mdash>that is, the uniquenessE<mdash>of the request.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener for a custom routing
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomRoutingEndpointGroup in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

