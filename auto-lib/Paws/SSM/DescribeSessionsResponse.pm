
package Paws::SSM::DescribeSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Session]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)


=head2 Sessions => ArrayRef[L<Paws::SSM::Session>]

A list of sessions meeting the request parameters.


=head2 _request_id => Str


=cut

1;