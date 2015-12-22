
package Paws::ECR::CreateRepositoryResponse;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::ECR::Repository', traits => ['Unwrapped'], xmlname => 'repository' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::CreateRepositoryResponse

=head1 ATTRIBUTES


=head2 Repository => L<Paws::ECR::Repository>

  


=cut

1;