
package Paws::GuardDuty::GetMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_UnprocessedAccount GuardDuty_Member/;
  has Members => (is => 'ro', isa => ArrayRef[GuardDuty_Member], required => 1);
  has UnprocessedAccounts => (is => 'ro', isa => ArrayRef[GuardDuty_UnprocessedAccount], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Members' => {
                              'type' => 'ArrayRef[GuardDuty_Member]',
                              'class' => 'Paws::GuardDuty::Member'
                            },
               'UnprocessedAccounts' => {
                                          'type' => 'ArrayRef[GuardDuty_UnprocessedAccount]',
                                          'class' => 'Paws::GuardDuty::UnprocessedAccount'
                                        }
             },
  'NameInRequest' => {
                       'UnprocessedAccounts' => 'unprocessedAccounts',
                       'Members' => 'members'
                     },
  'IsRequired' => {
                    'Members' => 1,
                    'UnprocessedAccounts' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Members => ArrayRef[GuardDuty_Member]

A list of members.


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[GuardDuty_UnprocessedAccount]

A list of objects containing the unprocessed account and a result
string explaining why it was unprocessed.


=head2 _request_id => Str


=cut

