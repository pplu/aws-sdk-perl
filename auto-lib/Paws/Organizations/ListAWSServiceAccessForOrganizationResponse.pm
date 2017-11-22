
package Paws::Organizations::ListAWSServiceAccessForOrganizationResponse;
  use Moose;
  has EnabledServicePrincipals => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::EnabledServicePrincipal]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListAWSServiceAccessForOrganizationResponse

=head1 ATTRIBUTES


=head2 EnabledServicePrincipals => ArrayRef[L<Paws::Organizations::EnabledServicePrincipal>]

A list of the service principals for the services that are enabled to
integrate with your organization. Each principal is a structure that
includes the name and the date that it was enabled for integration with
AWS Organizations.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;