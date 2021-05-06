
package Paws::Lambda::ListProvisionedConcurrencyConfigsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has ProvisionedConcurrencyConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::ProvisionedConcurrencyConfigListItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListProvisionedConcurrencyConfigsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 ProvisionedConcurrencyConfigs => ArrayRef[L<Paws::Lambda::ProvisionedConcurrencyConfigListItem>]

A list of provisioned concurrency configurations.


=head2 _request_id => Str


=cut

