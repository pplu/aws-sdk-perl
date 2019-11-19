# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListConferenceProvidersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_ConferenceProvider/;
  has ConferenceProviders => (is => 'ro', isa => ArrayRef[AlexaForBusiness_ConferenceProvider]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConferenceProviders' => {
                                          'class' => 'Paws::AlexaForBusiness::ConferenceProvider',
                                          'type' => 'ArrayRef[AlexaForBusiness_ConferenceProvider]'
                                        },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListConferenceProvidersResponse

=head1 ATTRIBUTES


=head2 ConferenceProviders => ArrayRef[AlexaForBusiness_ConferenceProvider]

The conference providers.


=head2 NextToken => Str

The tokens used for pagination.


=head2 _request_id => Str


=cut

1;