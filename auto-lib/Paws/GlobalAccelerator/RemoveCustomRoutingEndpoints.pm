
package Paws::GlobalAccelerator::RemoveCustomRoutingEndpoints;
  use Moose;
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveCustomRoutingEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::RemoveCustomRoutingEndpoints - Arguments for method RemoveCustomRoutingEndpoints on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveCustomRoutingEndpoints on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method RemoveCustomRoutingEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveCustomRoutingEndpoints.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    $globalaccelerator->RemoveCustomRoutingEndpoints(
      EndpointGroupArn => 'MyGenericString',
      EndpointIds      => [
        'MyGenericString', ...    # max: 255
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/RemoveCustomRoutingEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group to remove
endpoints from.



=head2 B<REQUIRED> EndpointIds => ArrayRef[Str|Undef]

The IDs for the endpoints. For custom routing accelerators, endpoint
IDs are the virtual private cloud (VPC) subnet IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveCustomRoutingEndpoints in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

