
package Paws::Glacier::PurchaseProvisionedCapacityOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has CapacityId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'CapacityId' => 'x-amz-capacity-id'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CapacityId' => {
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

Paws::Glacier::PurchaseProvisionedCapacityOutput

=head1 ATTRIBUTES


=head2 CapacityId => Str

The ID that identifies the provisioned capacity unit.


=head2 _request_id => Str


=cut

