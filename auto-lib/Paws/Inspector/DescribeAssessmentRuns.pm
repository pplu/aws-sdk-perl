
package Paws::Inspector::DescribeAssessmentRuns;
  use Moose;
  has AssessmentRunArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'assessmentRunArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssessmentRuns');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeAssessmentRunsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentRuns - Arguments for method DescribeAssessmentRuns on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssessmentRuns on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeAssessmentRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssessmentRuns.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Describte assessment runs
    # Describes the assessment runs that are specified by the ARNs of the
    # assessment runs.
    my $DescribeAssessmentRunsResponse = $inspector->DescribeAssessmentRuns(
      {
        'AssessmentRunArns' => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE'
        ]
      }
    );

    # Results:
    my $assessmentRuns = $DescribeAssessmentRunsResponse->assessmentRuns;
    my $failedItems    = $DescribeAssessmentRunsResponse->failedItems;

    # Returns a L<Paws::Inspector::DescribeAssessmentRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DescribeAssessmentRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArns => ArrayRef[Str|Undef]

The ARN that specifies the assessment run that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssessmentRuns in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

