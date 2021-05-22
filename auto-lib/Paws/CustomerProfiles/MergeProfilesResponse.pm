
package Paws::CustomerProfiles::MergeProfilesResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::MergeProfilesResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message that indicates the merge request is complete.


=head2 _request_id => Str


=cut

