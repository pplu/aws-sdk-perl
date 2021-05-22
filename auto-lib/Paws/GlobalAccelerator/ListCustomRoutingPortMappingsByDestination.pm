
package Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestination;
  use Moose;
  has DestinationAddress => (is => 'ro', isa => 'Str', required => 1);
  has EndpointId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomRoutingPortMappingsByDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestination - Arguments for method ListCustomRoutingPortMappingsByDestination on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomRoutingPortMappingsByDestination on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListCustomRoutingPortMappingsByDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomRoutingPortMappingsByDestination.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListCustomRoutingPortMappingsByDestinationResponse =
      $globalaccelerator->ListCustomRoutingPortMappingsByDestination(
      DestinationAddress => 'MyGenericString',
      EndpointId         => 'MyGenericString',
      MaxResults         => 1,                    # OPTIONAL
      NextToken          => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $DestinationPortMappings =
      $ListCustomRoutingPortMappingsByDestinationResponse
      ->DestinationPortMappings;
    my $NextToken =
      $ListCustomRoutingPortMappingsByDestinationResponse->NextToken;

# Returns a L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListCustomRoutingPortMappingsByDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationAddress => Str

The endpoint IP address in a virtual private cloud (VPC) subnet for
which you want to receive back port mappings.



=head2 B<REQUIRED> EndpointId => Str

The ID for the virtual private cloud (VPC) subnet.



=head2 MaxResults => Int

The number of destination port mappings that you want to return with
this call. The default value is 10.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomRoutingPortMappingsByDestination in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

