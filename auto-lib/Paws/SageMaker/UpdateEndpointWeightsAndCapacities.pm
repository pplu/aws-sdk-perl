
package Paws::SageMaker::UpdateEndpointWeightsAndCapacities;
  use Moose;
  has DesiredWeightsAndCapacities => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DesiredWeightAndCapacity]', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpointWeightsAndCapacities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateEndpointWeightsAndCapacities - Arguments for method UpdateEndpointWeightsAndCapacities on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpointWeightsAndCapacities on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateEndpointWeightsAndCapacities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpointWeightsAndCapacities.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateEndpointWeightsAndCapacitiesOutput =
      $api . sagemaker->UpdateEndpointWeightsAndCapacities(
      DesiredWeightsAndCapacities => [
        {
          VariantName          => 'MyVariantName',    # max: 63
          DesiredInstanceCount => 1,                  # min: 1; OPTIONAL
          DesiredWeight        => 1.0,                # OPTIONAL
        },
        ...
      ],
      EndpointName => 'MyEndpointName',

      );

    # Results:
    my $EndpointArn = $UpdateEndpointWeightsAndCapacitiesOutput->EndpointArn;

# Returns a L<Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateEndpointWeightsAndCapacities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredWeightsAndCapacities => ArrayRef[L<Paws::SageMaker::DesiredWeightAndCapacity>]

An object that provides new capacity and weight values for a variant.



=head2 B<REQUIRED> EndpointName => Str

The name of an existing Amazon SageMaker endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpointWeightsAndCapacities in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

