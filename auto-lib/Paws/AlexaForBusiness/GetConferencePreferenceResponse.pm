# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetConferencePreferenceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_ConferencePreference/;
  has Preference => (is => 'ro', isa => AlexaForBusiness_ConferencePreference);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Preference' => {
                                 'type' => 'AlexaForBusiness_ConferencePreference',
                                 'class' => 'Paws::AlexaForBusiness::ConferencePreference'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetConferencePreferenceResponse

=head1 ATTRIBUTES


=head2 Preference => AlexaForBusiness_ConferencePreference

The conference preference.


=head2 _request_id => Str


=cut

1;