
package Paws::ServiceCatalog::UpdateProvisionedProductOutput;
  use Moose;
  has RecordDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::RecordDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProductOutput

=head1 ATTRIBUTES


=head2 RecordDetail => L<Paws::ServiceCatalog::RecordDetail>

Information about the result of the request.


=head2 _request_id => Str


=cut

1;