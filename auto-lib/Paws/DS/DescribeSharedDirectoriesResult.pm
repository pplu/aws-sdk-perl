
package Paws::DS::DescribeSharedDirectoriesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SharedDirectories => (is => 'ro', isa => 'ArrayRef[Paws::DS::SharedDirectory]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSharedDirectoriesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, token that indicates that more results are available. Pass
this value for the C<NextToken> parameter in a subsequent call to
DescribeSharedDirectories to retrieve the next set of items.


=head2 SharedDirectories => ArrayRef[L<Paws::DS::SharedDirectory>]

A list of all shared directories in your account.


=head2 _request_id => Str


=cut

1;