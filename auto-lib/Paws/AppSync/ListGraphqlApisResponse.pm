
package Paws::AppSync::ListGraphqlApisResponse;
  use Moose;
  has GraphqlApis => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::GraphqlApi]', traits => ['NameInRequest'], request_name => 'graphqlApis');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListGraphqlApisResponse

=head1 ATTRIBUTES


=head2 GraphqlApis => ArrayRef[L<Paws::AppSync::GraphqlApi>]

The C<GraphqlApi> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

