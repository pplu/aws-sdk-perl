
package Paws::ServiceCatalog::GetAWSOrganizationsAccessStatusOutput;
  use Moose;
  has AccessStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::GetAWSOrganizationsAccessStatusOutput

=head1 ATTRIBUTES


=head2 AccessStatus => Str

The status of the portfolio share feature.

Valid values are: C<"ENABLED">, C<"UNDER_CHANGE">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;