
package Paws::ELBv2::DescribeSSLPoliciesOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has SslPolicies => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::SslPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeSSLPoliciesOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 SslPolicies => ArrayRef[L<Paws::ELBv2::SslPolicy>]

Information about the security policies.


=head2 _request_id => Str


=cut

