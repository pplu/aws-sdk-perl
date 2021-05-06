
package Paws::MTurk::CreateHITTypeResponse;
  use Moose;
  has HITTypeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateHITTypeResponse

=head1 ATTRIBUTES


=head2 HITTypeId => Str

The ID of the newly registered HIT type.


=head2 _request_id => Str


=cut

1;