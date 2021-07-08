
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

A list of branches for an Amplify app.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

