# Generated from json/callresult_class.tt

package Paws::WorkMail::GetMailboxDetailsResponse;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::WorkMail::Types qw//;
  has MailboxQuota => (is => 'ro', isa => Int);
  has MailboxSize => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MailboxQuota' => {
                                   'type' => 'Int'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MailboxSize' => {
                                  'type' => 'Num'
                                }
             }
}
;
    return $Params_map;
  }


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