
package Paws::MediaTailor::GetChannelScheduleResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::ScheduleEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetChannelScheduleResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::ScheduleEntry>]

An array of schedule entries for the channel.


=head2 NextToken => Str

Pagination token from the GET list request. Use the token to fetch the
next page of results.


=head2 _request_id => Str


=cut

