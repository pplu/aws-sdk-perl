
package Paws::Chime::GetAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Account/;
  has Account => (is => 'ro', isa => Chime_Account);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Account' => {
                              'class' => 'Paws::Chime::Account',
                              'type' => 'Chime_Account'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAccountResponse

=head1 ATTRIBUTES


=head2 Account => Chime_Account

The Amazon Chime account details.


=head2 _request_id => Str


=cut

