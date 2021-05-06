
package Paws::CodeStarNotifications::ListNotificationRulesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationRules => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::NotificationRuleSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListNotificationRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 NotificationRules => ArrayRef[L<Paws::CodeStarNotifications::NotificationRuleSummary>]

The list of notification rules for the AWS account, by Amazon Resource
Name (ARN) and ID.


=head2 _request_id => Str


=cut

