
package Paws::ApiGateway::Authorizers;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_Authorizer/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_Authorizer]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'Items' => {
                            'class' => 'Paws::ApiGateway::Authorizer',
                            'type' => 'ArrayRef[ApiGateway_Authorizer]'
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

Paws::ApiGateway::Authorizers

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_Authorizer]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

