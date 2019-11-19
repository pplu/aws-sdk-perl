# Generated from json/callresult_class.tt

package Paws::SSM::ListAssociationVersionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_AssociationVersionInfo/;
  has AssociationVersions => (is => 'ro', isa => ArrayRef[SSM_AssociationVersionInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssociationVersions' => {
                                          'class' => 'Paws::SSM::AssociationVersionInfo',
                                          'type' => 'ArrayRef[SSM_AssociationVersionInfo]'
                                        },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListAssociationVersionsResult

=head1 ATTRIBUTES


=head2 AssociationVersions => ArrayRef[SSM_AssociationVersionInfo]

Information about all versions of the association for the specified
association ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;