# Generated from json/callresult_class.tt

package Paws::OpsWorks::CreateDeploymentResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has DeploymentId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateDeploymentResult

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The deployment ID, which can be used with other requests to identify
the deployment.


=head2 _request_id => Str


=cut

1;