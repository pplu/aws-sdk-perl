
package Paws::ApiGateway::DocumentationParts;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_DocumentationPart/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_DocumentationPart]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Items' => {
                            'class' => 'Paws::ApiGateway::DocumentationPart',
                            'type' => 'ArrayRef[ApiGateway_DocumentationPart]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Position' => {
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

Paws::ApiGateway::DocumentationParts

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_DocumentationPart]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

