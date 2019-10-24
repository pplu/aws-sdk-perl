# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetAccountSettingsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_AccountSettings/;
  has AccountSettings => (is => 'ro', isa => DeviceFarm_AccountSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountSettings' => {
                                      'class' => 'Paws::DeviceFarm::AccountSettings',
                                      'type' => 'DeviceFarm_AccountSettings'
                                    }
             },
  'NameInRequest' => {
                       'AccountSettings' => 'accountSettings'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetAccountSettingsResult

=head1 ATTRIBUTES


=head2 AccountSettings => DeviceFarm_AccountSettings

The account settings.


=head2 _request_id => Str


=cut

1;