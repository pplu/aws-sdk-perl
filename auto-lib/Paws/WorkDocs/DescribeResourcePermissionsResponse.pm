
package Paws::WorkDocs::DescribeResourcePermissionsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Principals => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::Principal]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeResourcePermissionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 Principals => ArrayRef[L<Paws::WorkDocs::Principal>]

The principals.


=head2 _request_id => Str


=cut

