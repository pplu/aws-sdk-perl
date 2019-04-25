
package Paws::FMS::ListComplianceStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyComplianceStatusList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::PolicyComplianceStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListComplianceStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you have more C<PolicyComplianceStatus> objects than the number that
you specified for C<MaxResults> in the request, the response includes a
C<NextToken> value. To list more C<PolicyComplianceStatus> objects,
submit another C<ListComplianceStatus> request, and specify the
C<NextToken> value from the response in the C<NextToken> value in the
next request.


=head2 PolicyComplianceStatusList => ArrayRef[L<Paws::FMS::PolicyComplianceStatus>]

An array of C<PolicyComplianceStatus> objects.


=head2 _request_id => Str


=cut

1;