
package Paws::MTurk::UpdateQualificationTypeResponse;
  use Moose;
  has QualificationType => (is => 'ro', isa => 'Paws::MTurk::QualificationType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateQualificationTypeResponse

=head1 ATTRIBUTES


=head2 QualificationType => L<Paws::MTurk::QualificationType>

Contains a QualificationType data structure.


=head2 _request_id => Str


=cut

1;