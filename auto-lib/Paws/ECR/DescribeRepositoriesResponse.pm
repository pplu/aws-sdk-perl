
package Paws::ECR::DescribeRepositoriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Repository]', traits => ['Unwrapped'], xmlname => 'repositories' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRepositoriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeRepositories>
request. When the results of a C<DescribeRepositories> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.



=head2 Repositories => ArrayRef[L<Paws::ECR::Repository>]

A list of repository objects corresponding to valid repositories.




=cut

1;