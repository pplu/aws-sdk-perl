# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetApplicationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_ApplicationInfo/;
  has ApplicationsInfo => (is => 'ro', isa => ArrayRef[CodeDeploy_ApplicationInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationsInfo' => {
                                       'type' => 'ArrayRef[CodeDeploy_ApplicationInfo]',
                                       'class' => 'Paws::CodeDeploy::ApplicationInfo'
                                     }
             },
  'NameInRequest' => {
                       'ApplicationsInfo' => 'applicationsInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationsOutput

=head1 ATTRIBUTES


=head2 ApplicationsInfo => ArrayRef[CodeDeploy_ApplicationInfo]

Information about the applications.


=head2 _request_id => Str


=cut

1;