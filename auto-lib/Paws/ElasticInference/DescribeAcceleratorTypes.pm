
package Paws::ElasticInference::DescribeAcceleratorTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAcceleratorTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-accelerator-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticInference::DescribeAcceleratorTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAcceleratorTypes - Arguments for method DescribeAcceleratorTypes on L<Paws::ElasticInference>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAcceleratorTypes on the
L<Amazon Elastic  Inference|Paws::ElasticInference> service. Use the attributes of this class
as arguments to method DescribeAcceleratorTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAcceleratorTypes.

=head1 SYNOPSIS

    my $api.elastic-inference = Paws->service('ElasticInference');
    my $DescribeAcceleratorTypesResponse =
      $api . elastic-inference->DescribeAcceleratorTypes();

    # Results:
    my $AcceleratorTypes = $DescribeAcceleratorTypesResponse->AcceleratorTypes;

 # Returns a L<Paws::ElasticInference::DescribeAcceleratorTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.elastic-inference/DescribeAcceleratorTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAcceleratorTypes in L<Paws::ElasticInference>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

