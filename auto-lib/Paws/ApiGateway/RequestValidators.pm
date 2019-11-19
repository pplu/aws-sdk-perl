
package Paws::ApiGateway::RequestValidators;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_RequestValidator/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_RequestValidator]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'Items' => {
                            'class' => 'Paws::ApiGateway::RequestValidator',
                            'type' => 'ArrayRef[ApiGateway_RequestValidator]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Position' => 'position',
                       'Items' => 'item'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RequestValidators

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_RequestValidator]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

