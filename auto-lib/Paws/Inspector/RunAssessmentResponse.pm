
package Paws::Inspector::RunAssessmentResponse;
  use Moose;
  has RunArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'runArn' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RunAssessmentResponse

=head1 ATTRIBUTES

=head2 RunArn => Str

  The ARN specifying the run of the assessment.


=cut

1;