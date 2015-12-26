
package Paws::Inspector::UpdateAssessmentResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::UpdateAssessmentResponse

=head1 ATTRIBUTES


=head2 Message => Str

Confirmation details of the action performed.




=cut

1;