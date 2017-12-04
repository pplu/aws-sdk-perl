
package Paws::AppSync::GetIntrospectionSchemaResponse;
  use Moose;
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Schema');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetIntrospectionSchemaResponse

=head1 ATTRIBUTES


=head2 Schema => Str

The schema, in GraphQL Schema Definition Language (SDL) format.

For more information, see the GraphQL SDL documentation
(http://graphql.org/learn/schema/).


=head2 _request_id => Str


=cut

