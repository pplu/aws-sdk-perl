# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListDeploymentGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has ApplicationName => (is => 'ro', isa => Str);
  has DeploymentGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentGroups' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ApplicationName' => 'applicationName',
                       'DeploymentGroups' => 'deploymentGroups'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentGroupsOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The application name.


=head2 DeploymentGroups => ArrayRef[Str|Undef]

A list of deployment group names.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment groups call to
return the next set of deployment groups in the list.


=head2 _request_id => Str


=cut

1;