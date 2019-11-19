
package Paws::ApiGateway::SdkTypes;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_SdkType/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_SdkType]);
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
               'Items' => {
                            'type' => 'ArrayRef[ApiGateway_SdkType]',
                            'class' => 'Paws::ApiGateway::SdkType'
                          },
               '_request_id' => {
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

Paws::ApiGateway::SdkTypes

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_SdkType]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

