
package Paws::SecurityHub::DescribeStandardsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Standards => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Standard]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeStandardsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 Standards => ArrayRef[L<Paws::SecurityHub::Standard>]

A list of available standards.


=head2 _request_id => Str


=cut

