
package Paws::ApiGatewayV2::GetTagsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2___mapOf__string/;
  has Tags => (is => 'ro', isa => ApiGatewayV2___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::__mapOf__string',
                           'type' => 'ApiGatewayV2___mapOf__string'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetTagsResponse

=head1 ATTRIBUTES


=head2 Tags => ApiGatewayV2___mapOf__string




=head2 _request_id => Str


=cut

