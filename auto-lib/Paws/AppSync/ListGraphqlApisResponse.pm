
package Paws::AppSync::ListGraphqlApisResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_GraphqlApi/;
  has GraphqlApis => (is => 'ro', isa => ArrayRef[AppSync_GraphqlApi]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'GraphqlApis' => {
                                  'type' => 'ArrayRef[AppSync_GraphqlApi]',
                                  'class' => 'Paws::AppSync::GraphqlApi'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'GraphqlApis' => 'graphqlApis'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListGraphqlApisResponse

=head1 ATTRIBUTES


=head2 GraphqlApis => ArrayRef[AppSync_GraphqlApi]

The C<GraphqlApi> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

