
package Paws::SecurityHub::GetMasterAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw/SecurityHub_Invitation/;
  has Master => (is => 'ro', isa => SecurityHub_Invitation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Master' => {
                             'class' => 'Paws::SecurityHub::Invitation',
                             'type' => 'SecurityHub_Invitation'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetMasterAccountResponse

=head1 ATTRIBUTES


=head2 Master => SecurityHub_Invitation

A list of details about the Security Hub master account for the current
member account.


=head2 _request_id => Str


=cut

