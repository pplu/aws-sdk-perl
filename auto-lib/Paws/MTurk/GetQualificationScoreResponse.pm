
package Paws::MTurk::GetQualificationScoreResponse;
  use Moose;
  has Qualification => (is => 'ro', isa => 'Paws::MTurk::Qualification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetQualificationScoreResponse

=head1 ATTRIBUTES


=head2 Qualification => L<Paws::MTurk::Qualification>

The Qualification data structure of the Qualification assigned to a
user, including the Qualification type and the value (score).


=head2 _request_id => Str


=cut

1;