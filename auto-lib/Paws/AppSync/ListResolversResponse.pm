
package Paws::AppSync::ListResolversResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_Resolver/;
  has NextToken => (is => 'ro', isa => Str);
  has Resolvers => (is => 'ro', isa => ArrayRef[AppSync_Resolver]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Resolvers' => 'resolvers'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Resolvers' => {
                                'type' => 'ArrayRef[AppSync_Resolver]',
                                'class' => 'Paws::AppSync::Resolver'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListResolversResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 Resolvers => ArrayRef[AppSync_Resolver]

The C<Resolver> objects.


=head2 _request_id => Str


=cut

