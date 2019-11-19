
package Paws::ApiGateway::Models;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_Model/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_Model]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Items' => 'item',
                       'Position' => 'position'
                     },
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'class' => 'Paws::ApiGateway::Model',
                            'type' => 'ArrayRef[ApiGateway_Model]'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Models

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_Model]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

