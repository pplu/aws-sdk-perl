
package Paws::AppSync::ListApiKeysResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_ApiKey/;
  has ApiKeys => (is => 'ro', isa => ArrayRef[AppSync_ApiKey]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApiKeys' => {
                              'class' => 'Paws::AppSync::ApiKey',
                              'type' => 'ArrayRef[AppSync_ApiKey]'
                            }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ApiKeys' => 'apiKeys'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListApiKeysResponse

=head1 ATTRIBUTES


=head2 ApiKeys => ArrayRef[AppSync_ApiKey]

The C<ApiKey> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

