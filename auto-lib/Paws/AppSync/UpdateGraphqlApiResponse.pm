
package Paws::AppSync::UpdateGraphqlApiResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_GraphqlApi/;
  has GraphqlApi => (is => 'ro', isa => AppSync_GraphqlApi);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GraphqlApi' => {
                                 'class' => 'Paws::AppSync::GraphqlApi',
                                 'type' => 'AppSync_GraphqlApi'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'GraphqlApi' => 'graphqlApi'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateGraphqlApiResponse

=head1 ATTRIBUTES


=head2 GraphqlApi => AppSync_GraphqlApi

The updated C<GraphqlApi> object.


=head2 _request_id => Str


=cut

