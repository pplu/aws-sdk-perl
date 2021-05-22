
package Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse;
  use Moose;
  has ServiceQuotaTemplateAssociationStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaTemplateAssociationStatus => Str

The association status. If the status is C<ASSOCIATED>, the quota
increase requests in the template are automatically applied to new
accounts in your organization.

Valid values are: C<"ASSOCIATED">, C<"DISASSOCIATED">
=head2 _request_id => Str


=cut

1;