
package Paws::SecurityHub::DescribeHubResponse;
  use Moose;
  has AutoEnableControls => (is => 'ro', isa => 'Bool');
  has HubArn => (is => 'ro', isa => 'Str');
  has SubscribedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeHubResponse

=head1 ATTRIBUTES


=head2 AutoEnableControls => Bool

Whether to automatically enable new controls when they are added to
standards that are enabled.

If set to C<true>, then new controls for enabled standards are enabled
automatically. If set to C<false>, then new controls are not enabled.


=head2 HubArn => Str

The ARN of the Hub resource that was retrieved.


=head2 SubscribedAt => Str

The date and time when Security Hub was enabled in the account.


=head2 _request_id => Str


=cut

