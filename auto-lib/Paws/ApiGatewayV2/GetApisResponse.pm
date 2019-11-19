
package Paws::ApiGatewayV2::GetApisResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_Api/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGatewayV2_Api]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'class' => 'Paws::ApiGatewayV2::Api',
                            'type' => 'ArrayRef[ApiGatewayV2_Api]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Items' => 'items'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApisResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGatewayV2_Api]

The elements from this collection.


=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.


=head2 _request_id => Str


=cut

