
package Paws::RAM::GetResourceSharesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_ResourceShare/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceShares => (is => 'ro', isa => ArrayRef[RAM_ResourceShare]);

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
               'ResourceShares' => {
                                     'class' => 'Paws::RAM::ResourceShare',
                                     'type' => 'ArrayRef[RAM_ResourceShare]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ResourceShares' => 'resourceShares'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceSharesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShares => ArrayRef[RAM_ResourceShare]

Information about the resource shares.


=head2 _request_id => Str


=cut

