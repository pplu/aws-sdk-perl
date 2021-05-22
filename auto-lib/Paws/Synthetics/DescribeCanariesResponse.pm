
package Paws::Synthetics::DescribeCanariesResponse;
  use Moose;
  has Canaries => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::Canary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DescribeCanariesResponse

=head1 ATTRIBUTES


=head2 Canaries => ArrayRef[L<Paws::Synthetics::Canary>]

Returns an array. Each item in the array contains the full information
about one canary.


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<DescribeCanaries> operation to retrieve
the next set of results.


=head2 _request_id => Str


=cut

