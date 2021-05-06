
package Paws::SageMaker::DescribeTrial;
  use Moose;
  has TrialName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrial');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTrialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrial - Arguments for method DescribeTrial on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrial on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTrial.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrial.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeTrialResponse = $api . sagemaker->DescribeTrial(
      TrialName => 'MyExperimentEntityName',

    );

    # Results:
    my $CreatedBy        = $DescribeTrialResponse->CreatedBy;
    my $CreationTime     = $DescribeTrialResponse->CreationTime;
    my $DisplayName      = $DescribeTrialResponse->DisplayName;
    my $ExperimentName   = $DescribeTrialResponse->ExperimentName;
    my $LastModifiedBy   = $DescribeTrialResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeTrialResponse->LastModifiedTime;
    my $Source           = $DescribeTrialResponse->Source;
    my $TrialArn         = $DescribeTrialResponse->TrialArn;
    my $TrialName        = $DescribeTrialResponse->TrialName;

    # Returns a L<Paws::SageMaker::DescribeTrialResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeTrial>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrialName => Str

The name of the trial to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrial in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

