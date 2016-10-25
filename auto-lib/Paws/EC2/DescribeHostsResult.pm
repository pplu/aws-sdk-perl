
package Paws::EC2::DescribeHostsResult;
  use Moose;
  has Hosts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Host]', xmlname => 'hostSet', traits => ['Unwrapped',]);
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostsResult

=head1 ATTRIBUTES


=head2 Hosts => ArrayRef[L<Paws::EC2::Host>]

Information about the Dedicated Hosts.



=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.




=cut

