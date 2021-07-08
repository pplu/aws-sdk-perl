
package Paws::EC2::DescribeManagedPrefixListsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has PrefixLists => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ManagedPrefixList]', request_name => 'prefixListSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeManagedPrefixListsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 PrefixLists => ArrayRef[L<Paws::EC2::ManagedPrefixList>]

Information about the prefix lists.


=head2 _request_id => Str


=cut

