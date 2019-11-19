
package Paws::RAM::GetResourceShareAssociationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_ResourceShareAssociation/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceShareAssociations => (is => 'ro', isa => ArrayRef[RAM_ResourceShareAssociation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceShareAssociations' => 'resourceShareAssociations',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'ResourceShareAssociations' => {
                                                'type' => 'ArrayRef[RAM_ResourceShareAssociation]',
                                                'class' => 'Paws::RAM::ResourceShareAssociation'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShareAssociations => ArrayRef[RAM_ResourceShareAssociation]

Information about the associations.


=head2 _request_id => Str


=cut

