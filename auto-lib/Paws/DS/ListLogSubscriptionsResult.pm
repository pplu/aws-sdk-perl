
package Paws::DS::ListLogSubscriptionsResult;
  use Moose;
  has LogSubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::DS::LogSubscription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListLogSubscriptionsResult

=head1 ATTRIBUTES


=head2 LogSubscriptions => ArrayRef[L<Paws::DS::LogSubscription>]

A list of active LogSubscription objects for calling the AWS account.


=head2 NextToken => Str

The token for the next set of items to return.


=head2 _request_id => Str


=cut

1;