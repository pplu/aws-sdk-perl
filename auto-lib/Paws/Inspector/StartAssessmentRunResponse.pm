
package Paws::Inspector::StartAssessmentRunResponse;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StartAssessmentRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that has been started.




=cut

1;