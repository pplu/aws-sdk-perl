
package Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse;
  use Moose;
  has ServiceQuotaTemplateAssociationStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaTemplateAssociationStatus => Str

Specifies whether the template is C<ASSOCIATED> or C<DISASSOCIATED>. If
the template is C<ASSOCIATED>, then it requests service quota increases
for all new accounts created in your organization.

Valid values are: C<"ASSOCIATED">, C<"DISASSOCIATED">
=head2 _request_id => Str


=cut

1;