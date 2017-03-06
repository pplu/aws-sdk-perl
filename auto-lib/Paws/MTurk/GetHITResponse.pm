
package Paws::MTurk::GetHITResponse;
  use Moose;
  has HIT => (is => 'ro', isa => 'Paws::MTurk::HIT');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetHITResponse

=head1 ATTRIBUTES


=head2 HIT => L<Paws::MTurk::HIT>

Contains the requested HIT data.


=head2 _request_id => Str


=cut

1;