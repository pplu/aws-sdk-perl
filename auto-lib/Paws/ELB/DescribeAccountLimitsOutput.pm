
package Paws::ELB::DescribeAccountLimitsOutput;
  use Moose;
  has Limits => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Limit]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeAccountLimitsOutput

=head1 ATTRIBUTES


=head2 Limits => ArrayRef[L<Paws::ELB::Limit>]

Information about the limits.


=head2 NextMarker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

