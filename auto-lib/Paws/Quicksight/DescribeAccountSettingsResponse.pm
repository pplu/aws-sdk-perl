
package Paws::Quicksight::DescribeAccountSettingsResponse;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::Quicksight::AccountSettings');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::Quicksight::AccountSettings>

The QuickSight settings for this AWS account. This information includes
the edition of Amazon QuickSight that you subscribed to (Standard or
Enterprise) and the notification email for the QuickSight subscription.
In the QuickSight console, the QuickSight subscription is sometimes
referred to as a QuickSight "account" even though it's technically not
an account by itself. Instead, it's a subscription to the QuickSight
service for your AWS account. The edition that you subscribe to applies
to QuickSight in every AWS Region where you use it.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

