
package Paws::Inspector::DescribeAssessmentResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::Inspector::Assessment', traits => ['Unwrapped'], xmlname => 'assessment' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentResponse

=head1 ATTRIBUTES


=head2 Assessment => L<Paws::Inspector::Assessment>

  Information about the assessment.


=cut

1;