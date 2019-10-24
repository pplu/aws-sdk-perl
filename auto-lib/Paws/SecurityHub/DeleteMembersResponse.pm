
package Paws::SecurityHub::DeleteMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Result/;
  has UnprocessedAccounts => (is => 'ro', isa => ArrayRef[SecurityHub_Result]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::SecurityHub::DeleteMembersResponse

=head1 ATTRIBUTES


=head2 UnprocessedAccounts => ArrayRef[SecurityHub_Result]

A list of account ID and email address pairs of the AWS accounts that
weren't deleted.


=head2 _request_id => Str


=cut

