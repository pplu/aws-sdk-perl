
package Paws::CodeCommit::GetBranchOutput;
  use Moose;
  has Branch => (is => 'ro', isa => 'Paws::CodeCommit::BranchInfo', traits => ['Unwrapped'], xmlname => 'branch' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBranchOutput

=head1 ATTRIBUTES


=head2 Branch => L<Paws::CodeCommit::BranchInfo>

  The name of the branch.


=cut

1;