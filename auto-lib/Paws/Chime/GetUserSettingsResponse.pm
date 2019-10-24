
package Paws::Chime::GetUserSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_UserSettings/;
  has UserSettings => (is => 'ro', isa => Chime_UserSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserSettings' => {
                                   'class' => 'Paws::Chime::UserSettings',
                                   'type' => 'Chime_UserSettings'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetUserSettingsResponse

=head1 ATTRIBUTES


=head2 UserSettings => Chime_UserSettings

The user settings.


=head2 _request_id => Str


=cut

