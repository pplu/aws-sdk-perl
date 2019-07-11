
package Paws::WorkMail::GetMailboxDetailsResponse;
  use Moose;
  has MailboxQuota => (is => 'ro', isa => 'Int');
  has MailboxSize => (is => 'ro', isa => 'Num');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMailboxDetailsResponse

=head1 ATTRIBUTES


=head2 MailboxQuota => Int

The maximum allowed mailbox size, in MB, for the specified user.


=head2 MailboxSize => Num

The current mailbox size, in MB, for the specified user.


=head2 _request_id => Str


=cut

1;