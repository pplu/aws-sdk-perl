# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetApplicationRevisionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_RevisionInfo/;
  has ApplicationName => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[CodeDeploy_RevisionInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ErrorMessage' => 'errorMessage',
                       'Revisions' => 'revisions',
                       'ApplicationName' => 'applicationName'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Revisions' => {
                                'type' => 'ArrayRef[CodeDeploy_RevisionInfo]',
                                'class' => 'Paws::CodeDeploy::RevisionInfo'
                              },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationRevisionsOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application that corresponds to the revisions.


=head2 ErrorMessage => Str

Information about errors that might have occurred during the API call.


=head2 Revisions => ArrayRef[CodeDeploy_RevisionInfo]

Additional information about the revisions, including the type and
location.


=head2 _request_id => Str


=cut

1;