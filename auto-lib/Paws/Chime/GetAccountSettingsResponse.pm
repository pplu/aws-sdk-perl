
package Paws::Chime::GetAccountSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_AccountSettings/;
  has AccountSettings => (is => 'ro', isa => Chime_AccountSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountSettings' => {
                                      'class' => 'Paws::Chime::AccountSettings',
                                      'type' => 'Chime_AccountSettings'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettings => Chime_AccountSettings

The Amazon Chime account settings.


=head2 _request_id => Str


=cut

