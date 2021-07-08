
package Paws::ECRPublic::DeleteRepositoryResponse;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::ECRPublic::Repository', traits => ['NameInRequest'], request_name => 'repository' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DeleteRepositoryResponse

=head1 ATTRIBUTES


=head2 Repository => L<Paws::ECRPublic::Repository>

The repository that was deleted.


=head2 _request_id => Str


=cut

1;