
package Paws::ApiGateway::VpcLinks;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_VpcLink/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_VpcLink]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'type' => 'ArrayRef[ApiGateway_VpcLink]',
                            'class' => 'Paws::ApiGateway::VpcLink'
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

Paws::ApiGateway::VpcLinks

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_VpcLink]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

