# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetConferenceProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_ConferenceProvider/;
  has ConferenceProvider => (is => 'ro', isa => AlexaForBusiness_ConferenceProvider);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConferenceProvider' => {
                                         'class' => 'Paws::AlexaForBusiness::ConferenceProvider',
                                         'type' => 'AlexaForBusiness_ConferenceProvider'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetConferenceProviderResponse

=head1 ATTRIBUTES


=head2 ConferenceProvider => AlexaForBusiness_ConferenceProvider

The conference provider.


=head2 _request_id => Str


=cut

1;