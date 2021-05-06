
package Paws::FMS::GetComplianceDetailResponse;
  use Moose;
  has PolicyComplianceDetail => (is => 'ro', isa => 'Paws::FMS::PolicyComplianceDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetComplianceDetailResponse

=head1 ATTRIBUTES


=head2 PolicyComplianceDetail => L<Paws::FMS::PolicyComplianceDetail>

Information about the resources and the policy that you specified in
the C<GetComplianceDetail> request.


=head2 _request_id => Str


=cut

1;