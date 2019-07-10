
package Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput;
  use Moose;
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductProperties => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductProperties');
  has RecordId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput

=head1 ATTRIBUTES


=head2 ProvisionedProductId => Str

The provisioned product identifier.


=head2 ProvisionedProductProperties => L<Paws::ServiceCatalog::ProvisionedProductProperties>

A map that contains the properties updated.


=head2 RecordId => Str

The identifier of the record.


=head2 Status => Str

The status of the request.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"IN_PROGRESS_IN_ERROR">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;