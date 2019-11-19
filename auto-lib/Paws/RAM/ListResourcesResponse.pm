
package Paws::RAM::ListResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_Resource/;
  has NextToken => (is => 'ro', isa => Str);
  has Resources => (is => 'ro', isa => ArrayRef[RAM_Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Resources' => {
                                'class' => 'Paws::RAM::Resource',
                                'type' => 'ArrayRef[RAM_Resource]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Resources' => 'resources'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Resources => ArrayRef[RAM_Resource]

Information about the resources.


=head2 _request_id => Str


=cut

