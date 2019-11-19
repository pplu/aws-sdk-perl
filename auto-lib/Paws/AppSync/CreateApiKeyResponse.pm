
package Paws::AppSync::CreateApiKeyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_ApiKey/;
  has ApiKey => (is => 'ro', isa => AppSync_ApiKey);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ApiKey' => 'apiKey'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApiKey' => {
                             'type' => 'AppSync_ApiKey',
                             'class' => 'Paws::AppSync::ApiKey'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiKeyResponse

=head1 ATTRIBUTES


=head2 ApiKey => AppSync_ApiKey

The API key.


=head2 _request_id => Str


=cut

