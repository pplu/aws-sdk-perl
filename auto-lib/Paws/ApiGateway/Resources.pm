
package Paws::ApiGateway::Resources;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_Resource/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_Resource]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Position' => 'position',
                       'Items' => 'item'
                     },
  'types' => {
               'Items' => {
                            'type' => 'ArrayRef[ApiGateway_Resource]',
                            'class' => 'Paws::ApiGateway::Resource'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Position' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Resources

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_Resource]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

