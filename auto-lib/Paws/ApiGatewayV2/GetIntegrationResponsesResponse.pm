
package Paws::ApiGatewayV2::GetIntegrationResponsesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_IntegrationResponse/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGatewayV2_IntegrationResponse]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Items' => {
                            'class' => 'Paws::ApiGatewayV2::IntegrationResponse',
                            'type' => 'ArrayRef[ApiGatewayV2_IntegrationResponse]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Items' => 'items',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetIntegrationResponsesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGatewayV2_IntegrationResponse]

The elements from this collection.


=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.


=head2 _request_id => Str


=cut

