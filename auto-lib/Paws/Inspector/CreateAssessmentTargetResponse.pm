
package Paws::Inspector::CreateAssessmentTargetResponse;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetArn' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target that is created.




=cut

1;