
package Paws::IoTWireless::ListServiceProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceProfileList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::ServiceProfile]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListServiceProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 ServiceProfileList => ArrayRef[L<Paws::IoTWireless::ServiceProfile>]

The list of service profiles.


=head2 _request_id => Str


=cut

