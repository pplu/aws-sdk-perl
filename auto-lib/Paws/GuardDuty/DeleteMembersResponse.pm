
package Paws::GuardDuty::DeleteMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_UnprocessedAccount/;
  has UnprocessedAccounts => (is => 'ro', isa => ArrayRef[GuardDuty_UnprocessedAccount], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedAccounts' => {
                                          'class' => 'Paws::GuardDuty::UnprocessedAccount',
                                          'type' => 'ArrayRef[GuardDuty_UnprocessedAccount]'
                                        }
             },
  'IsRequired' => {
                    'UnprocessedAccounts' => 1
                  },
  'NameInRequest' => {
                       'UnprocessedAccounts' => 'unprocessedAccounts'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[GuardDuty_UnprocessedAccount]

The accounts that could not be processed.


=head2 _request_id => Str


=cut

