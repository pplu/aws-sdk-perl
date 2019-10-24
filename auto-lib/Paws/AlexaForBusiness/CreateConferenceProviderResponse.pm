# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateConferenceProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has ConferenceProviderArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConferenceProviderArn' => {
                                            'type' => 'Str'
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

Paws::AlexaForBusiness::CreateConferenceProviderResponse

=head1 ATTRIBUTES


=head2 ConferenceProviderArn => Str

The ARN of the newly-created conference provider.


=head2 _request_id => Str


=cut

1;