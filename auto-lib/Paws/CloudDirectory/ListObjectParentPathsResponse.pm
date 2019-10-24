
package Paws::CloudDirectory::ListObjectParentPathsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_PathToObjectIdentifiers/;
  has NextToken => (is => 'ro', isa => Str);
  has PathToObjectIdentifiersList => (is => 'ro', isa => ArrayRef[CloudDirectory_PathToObjectIdentifiers]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PathToObjectIdentifiersList' => {
                                                  'class' => 'Paws::CloudDirectory::PathToObjectIdentifiers',
                                                  'type' => 'ArrayRef[CloudDirectory_PathToObjectIdentifiers]'
                                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
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

Paws::CloudDirectory::ListObjectParentPathsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 PathToObjectIdentifiersList => ArrayRef[CloudDirectory_PathToObjectIdentifiers]

Returns the path to the C<ObjectIdentifiers> that are associated with
the directory.


=head2 _request_id => Str


=cut

