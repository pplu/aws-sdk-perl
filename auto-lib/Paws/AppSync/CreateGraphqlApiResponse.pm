
package Paws::AppSync::CreateGraphqlApiResponse;
  use Moose;
  has GraphqlApi => (is => 'ro', isa => 'Paws::AppSync::GraphqlApi', traits => ['NameInRequest'], request_name => 'graphqlApi');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateGraphqlApiResponse

=head1 ATTRIBUTES


=head2 GraphqlApi => L<Paws::AppSync::GraphqlApi>

The C<GraphqlApi>.


=head2 _request_id => Str


=cut

