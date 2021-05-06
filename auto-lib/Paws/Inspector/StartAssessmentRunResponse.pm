
package Paws::Inspector::StartAssessmentRunResponse;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StartAssessmentRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that has been started.


=head2 _request_id => Str


=cut

1;