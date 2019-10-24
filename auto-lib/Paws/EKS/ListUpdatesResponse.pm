
package Paws::EKS::ListUpdatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EKS::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has UpdateIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

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
               'UpdateIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'UpdateIds' => 'updateIds'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListUpdatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListUpdates> request.
When the results of a C<ListUpdates> request exceed C<maxResults>, you
can use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 UpdateIds => ArrayRef[Str|Undef]

A list of all the updates for the specified cluster and Region.


=head2 _request_id => Str


=cut

