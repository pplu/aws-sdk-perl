# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListDeploymentConfigsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentConfigsList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DeploymentConfigsList' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DeploymentConfigsList' => 'deploymentConfigsList'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentConfigsOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigsList => ArrayRef[Str|Undef]

A list of deployment configurations, including built-in configurations
such as CodeDeployDefault.OneAtATime.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment configurations
call to return the next set of deployment configurations in the list.


=head2 _request_id => Str


=cut

1;