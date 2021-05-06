
package Paws::AppSync::ListResolversByFunctionResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resolvers => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::Resolver]', traits => ['NameInRequest'], request_name => 'resolvers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListResolversByFunctionResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that can be used to return the next set of items in the
list.


=head2 Resolvers => ArrayRef[L<Paws::AppSync::Resolver>]

The list of resolvers.


=head2 _request_id => Str


=cut

