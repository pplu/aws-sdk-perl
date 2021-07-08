
package Paws::ComprehendMedical::DescribeRxNormInferenceJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRxNormInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::DescribeRxNormInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DescribeRxNormInferenceJob - Arguments for method DescribeRxNormInferenceJob on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRxNormInferenceJob on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method DescribeRxNormInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRxNormInferenceJob.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $DescribeRxNormInferenceJobResponse =
      $comprehendmedical->DescribeRxNormInferenceJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $ComprehendMedicalAsyncJobProperties =
      $DescribeRxNormInferenceJobResponse->ComprehendMedicalAsyncJobProperties;

# Returns a L<Paws::ComprehendMedical::DescribeRxNormInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/DescribeRxNormInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier that Amazon Comprehend Medical generated for the job.
The StartRxNormInferenceJob operation returns this identifier in its
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRxNormInferenceJob in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

