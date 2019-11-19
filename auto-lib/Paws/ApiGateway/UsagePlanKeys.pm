
package Paws::ApiGateway::UsagePlanKeys;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_UsagePlanKey/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_UsagePlanKey]);
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
                            'class' => 'Paws::ApiGateway::UsagePlanKey',
                            'type' => 'ArrayRef[ApiGateway_UsagePlanKey]'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlanKeys

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_UsagePlanKey]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

