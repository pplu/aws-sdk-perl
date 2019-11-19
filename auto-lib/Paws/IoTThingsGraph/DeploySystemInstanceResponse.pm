# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::DeploySystemInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemInstanceSummary/;
  has GreengrassDeploymentId => (is => 'ro', isa => Str);
  has Summary => (is => 'ro', isa => IoTThingsGraph_SystemInstanceSummary, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Summary' => 1
                  },
  'NameInRequest' => {
                       'GreengrassDeploymentId' => 'greengrassDeploymentId',
                       'Summary' => 'summary'
                     },
  'types' => {
               'Summary' => {
                              'class' => 'Paws::IoTThingsGraph::SystemInstanceSummary',
                              'type' => 'IoTThingsGraph_SystemInstanceSummary'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GreengrassDeploymentId' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeploySystemInstanceResponse

=head1 ATTRIBUTES


=head2 GreengrassDeploymentId => Str

The ID of the Greengrass deployment used to deploy the system instance.


=head2 B<REQUIRED> Summary => IoTThingsGraph_SystemInstanceSummary

An object that contains summary information about a system instance
that was deployed.


=head2 _request_id => Str


=cut

1;