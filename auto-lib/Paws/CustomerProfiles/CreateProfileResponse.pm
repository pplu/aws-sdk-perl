
package Paws::CustomerProfiles::CreateProfileResponse;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The unique identifier of a customer profile.


=head2 _request_id => Str


=cut

