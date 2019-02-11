
package Paws::SageMaker::DescribeAlgorithm;
  use Moose;
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlgorithm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeAlgorithmOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAlgorithm - Arguments for method DescribeAlgorithm on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlgorithm on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeAlgorithm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlgorithm.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeAlgorithmOutput = $api . sagemaker->DescribeAlgorithm(
      AlgorithmName => 'MyArnOrName',

    );

    # Results:
    my $AlgorithmArn         = $DescribeAlgorithmOutput->AlgorithmArn;
    my $AlgorithmDescription = $DescribeAlgorithmOutput->AlgorithmDescription;
    my $AlgorithmName        = $DescribeAlgorithmOutput->AlgorithmName;
    my $AlgorithmStatus      = $DescribeAlgorithmOutput->AlgorithmStatus;
    my $AlgorithmStatusDetails =
      $DescribeAlgorithmOutput->AlgorithmStatusDetails;
    my $CertifyForMarketplace = $DescribeAlgorithmOutput->CertifyForMarketplace;
    my $CreationTime          = $DescribeAlgorithmOutput->CreationTime;
    my $InferenceSpecification =
      $DescribeAlgorithmOutput->InferenceSpecification;
    my $ProductId             = $DescribeAlgorithmOutput->ProductId;
    my $TrainingSpecification = $DescribeAlgorithmOutput->TrainingSpecification;
    my $ValidationSpecification =
      $DescribeAlgorithmOutput->ValidationSpecification;

    # Returns a L<Paws::SageMaker::DescribeAlgorithmOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeAlgorithm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmName => Str

The name of the algorithm to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlgorithm in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

