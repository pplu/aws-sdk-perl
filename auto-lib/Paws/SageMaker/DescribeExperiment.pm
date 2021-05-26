
package Paws::SageMaker::DescribeExperiment;
  use Moose;
  has ExperimentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeExperiment - Arguments for method DescribeExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeExperimentResponse = $api . sagemaker->DescribeExperiment(
      ExperimentName => 'MyExperimentEntityName',

    );

    # Results:
    my $CreatedBy        = $DescribeExperimentResponse->CreatedBy;
    my $CreationTime     = $DescribeExperimentResponse->CreationTime;
    my $Description      = $DescribeExperimentResponse->Description;
    my $DisplayName      = $DescribeExperimentResponse->DisplayName;
    my $ExperimentArn    = $DescribeExperimentResponse->ExperimentArn;
    my $ExperimentName   = $DescribeExperimentResponse->ExperimentName;
    my $LastModifiedBy   = $DescribeExperimentResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeExperimentResponse->LastModifiedTime;
    my $Source           = $DescribeExperimentResponse->Source;

    # Returns a L<Paws::SageMaker::DescribeExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeExperiment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExperimentName => Str

The name of the experiment to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

