# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetApplicationRevisionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_GenericRevisionInfo CodeDeploy_RevisionLocation/;
  has ApplicationName => (is => 'ro', isa => Str);
  has Revision => (is => 'ro', isa => CodeDeploy_RevisionLocation);
  has RevisionInfo => (is => 'ro', isa => CodeDeploy_GenericRevisionInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ApplicationName' => 'applicationName',
                       'Revision' => 'revision',
                       'RevisionInfo' => 'revisionInfo'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RevisionInfo' => {
                                   'type' => 'CodeDeploy_GenericRevisionInfo',
                                   'class' => 'Paws::CodeDeploy::GenericRevisionInfo'
                                 },
               'Revision' => {
                               'type' => 'CodeDeploy_RevisionLocation',
                               'class' => 'Paws::CodeDeploy::RevisionLocation'
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

Paws::CodeDeploy::GetApplicationRevisionOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application that corresponds to the revision.


=head2 Revision => CodeDeploy_RevisionLocation

Additional information about the revision, including type and location.


=head2 RevisionInfo => CodeDeploy_GenericRevisionInfo

General information about the revision.


=head2 _request_id => Str


=cut

1;