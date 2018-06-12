
package Paws::Glacier::PurchaseProvisionedCapacityOutput;
  use Moose;
  has CapacityId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-capacity-id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::PurchaseProvisionedCapacityOutput

=head1 ATTRIBUTES


=head2 CapacityId => Str

The ID that identifies the provisioned capacity unit.


=head2 _request_id => Str


=cut

