
package Paws::ApiGateway::UsagePlans;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_UsagePlan/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_UsagePlan]);
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
                            'class' => 'Paws::ApiGateway::UsagePlan',
                            'type' => 'ArrayRef[ApiGateway_UsagePlan]'
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

Paws::ApiGateway::UsagePlans

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_UsagePlan]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

