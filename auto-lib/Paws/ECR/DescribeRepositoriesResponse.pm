
package Paws::ECR::DescribeRepositoriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Repository]', traits => ['NameInRequest'], request_name => 'repositories' );

  has _request_id => (is => 'ro', isa => 'Str');

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


=head2 _request_id => Str


=cut

1;