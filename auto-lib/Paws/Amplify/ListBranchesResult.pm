
package Paws::Amplify::ListBranchesResult;
  use Moose;
  has Branches => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::Branch]', traits => ['NameInRequest'], request_name => 'branches', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListBranchesResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branches => ArrayRef[L<Paws::Amplify::Branch>]

List of branches for an Amplify App.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

