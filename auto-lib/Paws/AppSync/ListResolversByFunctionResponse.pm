
package Paws::AppSync::ListResolversByFunctionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_Resolver/;
  has NextToken => (is => 'ro', isa => Str);
  has Resolvers => (is => 'ro', isa => ArrayRef[AppSync_Resolver]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Resolvers' => {
                                'class' => 'Paws::AppSync::Resolver',
                                'type' => 'ArrayRef[AppSync_Resolver]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Resolvers' => 'resolvers',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListResolversByFunctionResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that can be used to return the next set of items in the
list.


=head2 Resolvers => ArrayRef[AppSync_Resolver]

The list of resolvers.


=head2 _request_id => Str


=cut

