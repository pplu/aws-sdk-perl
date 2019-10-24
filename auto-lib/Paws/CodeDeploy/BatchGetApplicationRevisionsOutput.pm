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
  'types' => {
               'Revisions' => {
                                'class' => 'Paws::CodeDeploy::RevisionInfo',
                                'type' => 'ArrayRef[CodeDeploy_RevisionInfo]'
                              },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Revisions' => 'revisions',
                       'ApplicationName' => 'applicationName',
                       'ErrorMessage' => 'errorMessage'
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