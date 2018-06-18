
package Paws::Inspector::DescribeAssessmentTargets;
  use Moose;
  has AssessmentTargetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'assessmentTargetArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssessmentTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeAssessmentTargetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTargets - Arguments for method DescribeAssessmentTargets on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssessmentTargets on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeAssessmentTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssessmentTargets.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Describte assessment targets
    # Describes the assessment targets that are specified by the ARNs of the
    # assessment targets.
    my $DescribeAssessmentTargetsResponse =
      $inspector->DescribeAssessmentTargets(
      {
        'AssessmentTargetArns' =>
          ['arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq']
      }
      );

    # Results:
    my $assessmentTargets =
      $DescribeAssessmentTargetsResponse->assessmentTargets;
    my $failedItems = $DescribeAssessmentTargetsResponse->failedItems;

    # Returns a L<Paws::Inspector::DescribeAssessmentTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DescribeAssessmentTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArns => ArrayRef[Str|Undef]

The ARNs that specifies the assessment targets that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssessmentTargets in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

