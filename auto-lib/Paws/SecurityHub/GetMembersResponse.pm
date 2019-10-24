
package Paws::SecurityHub::GetMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Member SecurityHub_Result/;
  has Members => (is => 'ro', isa => ArrayRef[SecurityHub_Member]);
  has UnprocessedAccounts => (is => 'ro', isa => ArrayRef[SecurityHub_Result]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Members' => {
                              'class' => 'Paws::SecurityHub::Member',
                              'type' => 'ArrayRef[SecurityHub_Member]'
                            },
               'UnprocessedAccounts' => {
                                          'class' => 'Paws::SecurityHub::Result',
                                          'type' => 'ArrayRef[SecurityHub_Result]'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[SecurityHub_Member]

A list of details about the Security Hub member accounts.


=head2 UnprocessedAccounts => ArrayRef[SecurityHub_Result]

A list of account ID and email address pairs of the AWS accounts that
couldn't be processed.


=head2 _request_id => Str


=cut

