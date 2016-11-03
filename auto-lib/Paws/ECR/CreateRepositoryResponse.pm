
package Paws::ECR::CreateRepositoryResponse;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::ECR::Repository', traits => ['NameInRequest'], request_name => 'repository' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::CreateRepositoryResponse

=head1 ATTRIBUTES


=head2 Repository => L<Paws::ECR::Repository>

The repository that was created.




=cut

1;