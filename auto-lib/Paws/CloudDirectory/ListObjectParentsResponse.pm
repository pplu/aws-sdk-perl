
package Paws::CloudDirectory::ListObjectParentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectIdentifierAndLinkNameTuple CloudDirectory_ObjectIdentifierToLinkNameMap/;
  has NextToken => (is => 'ro', isa => Str);
  has ParentLinks => (is => 'ro', isa => ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]);
  has Parents => (is => 'ro', isa => CloudDirectory_ObjectIdentifierToLinkNameMap);

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
               'Parents' => {
                              'class' => 'Paws::CloudDirectory::ObjectIdentifierToLinkNameMap',
                              'type' => 'CloudDirectory_ObjectIdentifierToLinkNameMap'
                            },
               'ParentLinks' => {
                                  'type' => 'ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]',
                                  'class' => 'Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectParentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 ParentLinks => ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]

Returns a list of parent reference and LinkName Tuples.


=head2 Parents => CloudDirectory_ObjectIdentifierToLinkNameMap

The parent structure, which is a map with key as the
C<ObjectIdentifier> and LinkName as the value.


=head2 _request_id => Str


=cut

