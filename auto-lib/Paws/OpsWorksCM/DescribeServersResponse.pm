
package Paws::OpsWorksCM::DescribeServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Servers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Server]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

NextToken is a string that is returned in some command responses. It
indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call C<DescribeServers> again, and assign the token from the
previous results as the value of the C<nextToken> parameter. If there
are no more results, the response object's C<nextToken> parameter value
is C<null>. Setting a C<nextToken> value that was not returned in your
previous results causes an C<InvalidNextTokenException> to occur.


=head2 Servers => ArrayRef[L<Paws::OpsWorksCM::Server>]

Contains the response to a C<DescribeServers> request.


=head2 _request_id => Str


=cut

1;