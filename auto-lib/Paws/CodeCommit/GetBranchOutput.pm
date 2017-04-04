
package Paws::CodeCommit::GetBranchOutput;
  use Moose;
  has Branch => (is => 'ro', isa => 'Paws::CodeCommit::BranchInfo', traits => ['NameInRequest'], request_name => 'branch' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBranchOutput

=head1 ATTRIBUTES


=head2 Branch => L<Paws::CodeCommit::BranchInfo>

The name of the branch.


=head2 _request_id => Str


=cut

1;