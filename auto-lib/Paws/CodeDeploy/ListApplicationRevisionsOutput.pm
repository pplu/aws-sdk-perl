# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListApplicationRevisionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_RevisionLocation/;
  has NextToken => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[CodeDeploy_RevisionLocation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Revisions' => {
                                'class' => 'Paws::CodeDeploy::RevisionLocation',
                                'type' => 'ArrayRef[CodeDeploy_RevisionLocation]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Revisions' => 'revisions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationRevisionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list application revisions
call to return the next set of application revisions in the list.


=head2 Revisions => ArrayRef[CodeDeploy_RevisionLocation]

A list of locations that contain the matching revisions.


=head2 _request_id => Str


=cut

1;