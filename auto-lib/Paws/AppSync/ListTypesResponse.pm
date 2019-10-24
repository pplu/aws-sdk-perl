
package Paws::AppSync::ListTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_Type/;
  has NextToken => (is => 'ro', isa => Str);
  has Types => (is => 'ro', isa => ArrayRef[AppSync_Type]);

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
               'Types' => {
                            'class' => 'Paws::AppSync::Type',
                            'type' => 'ArrayRef[AppSync_Type]'
                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Types' => 'types'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 Types => ArrayRef[AppSync_Type]

The C<Type> objects.


=head2 _request_id => Str


=cut

