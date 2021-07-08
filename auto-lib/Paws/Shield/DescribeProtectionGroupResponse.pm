
package Paws::Shield::DescribeProtectionGroupResponse;
  use Moose;
  has ProtectionGroup => (is => 'ro', isa => 'Paws::Shield::ProtectionGroup', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeProtectionGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProtectionGroup => L<Paws::Shield::ProtectionGroup>

A grouping of protected resources that you and AWS Shield Advanced can
monitor as a collective. This resource grouping improves the accuracy
of detection and reduces false positives.


=head2 _request_id => Str


=cut

1;