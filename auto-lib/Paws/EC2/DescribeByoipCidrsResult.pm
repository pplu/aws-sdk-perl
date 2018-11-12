
package Paws::EC2::DescribeByoipCidrsResult;
  use Moose;
  has ByoipCidrs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ByoipCidr]', request_name => 'byoipCidrSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeByoipCidrsResult

=head1 ATTRIBUTES


=head2 ByoipCidrs => ArrayRef[L<Paws::EC2::ByoipCidr>]

Information about your address ranges.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

