
package Paws::Amplify::GetBranchResult;
  use Moose;
  has Branch => (is => 'ro', isa => 'Paws::Amplify::Branch', traits => ['NameInRequest'], request_name => 'branch', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetBranchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branch => L<Paws::Amplify::Branch>




=head2 _request_id => Str


=cut

