
package Paws::Polly::DescribeVoicesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Voices => (is => 'ro', isa => 'ArrayRef[Paws::Polly::Voice]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::DescribeVoicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use in the next request to continue the listing
of voices. C<NextToken> is returned only if the response is truncated.


=head2 Voices => ArrayRef[L<Paws::Polly::Voice>]

A list of voices with their properties.


=head2 _request_id => Str


=cut

