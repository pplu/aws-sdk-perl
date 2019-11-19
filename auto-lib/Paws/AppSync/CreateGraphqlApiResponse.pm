
package Paws::AppSync::CreateGraphqlApiResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_GraphqlApi/;
  has GraphqlApi => (is => 'ro', isa => AppSync_GraphqlApi);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'GraphqlApi' => 'graphqlApi'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GraphqlApi' => {
                                 'class' => 'Paws::AppSync::GraphqlApi',
                                 'type' => 'AppSync_GraphqlApi'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateGraphqlApiResponse

=head1 ATTRIBUTES


=head2 GraphqlApi => AppSync_GraphqlApi

The C<GraphqlApi>.


=head2 _request_id => Str


=cut

