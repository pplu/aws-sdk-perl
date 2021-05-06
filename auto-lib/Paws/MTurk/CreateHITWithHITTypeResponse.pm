
package Paws::MTurk::CreateHITWithHITTypeResponse;
  use Moose;
  has HIT => (is => 'ro', isa => 'Paws::MTurk::HIT');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateHITWithHITTypeResponse

=head1 ATTRIBUTES


=head2 HIT => L<Paws::MTurk::HIT>

Contains the newly created HIT data. For a description of the HIT data
structure as it appears in responses, see the HIT Data Structure
documentation.


=head2 _request_id => Str


=cut

1;