
package Paws::WorkSpaces::DescribeConnectionAliasesResult;
  use Moose;
  has ConnectionAliases => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ConnectionAlias]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeConnectionAliasesResult

=head1 ATTRIBUTES


=head2 ConnectionAliases => ArrayRef[L<Paws::WorkSpaces::ConnectionAlias>]

Information about the specified connection aliases.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;