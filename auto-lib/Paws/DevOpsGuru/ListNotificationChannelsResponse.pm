
package Paws::DevOpsGuru::ListNotificationChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::NotificationChannel]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListNotificationChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::DevOpsGuru::NotificationChannel>]

An array that contains the requested notification channels.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

