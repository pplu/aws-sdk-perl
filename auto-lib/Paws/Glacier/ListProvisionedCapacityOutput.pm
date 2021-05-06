
package Paws::Glacier::ListProvisionedCapacityOutput;
  use Moose;
  has ProvisionedCapacityList => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::ProvisionedCapacityDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListProvisionedCapacityOutput

=head1 ATTRIBUTES


=head2 ProvisionedCapacityList => ArrayRef[L<Paws::Glacier::ProvisionedCapacityDescription>]

The response body contains the following JSON fields.


=head2 _request_id => Str


=cut

