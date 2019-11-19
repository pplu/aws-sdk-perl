
package Paws::AppSync::GetIntrospectionSchemaResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Schema');
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has Schema => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Schema' => 'schema'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Schema' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

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

