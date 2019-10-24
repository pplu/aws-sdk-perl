# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeStackProvisioningParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw/OpsWorks_Parameters/;
  has AgentInstallerUrl => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => OpsWorks_Parameters);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::OpsWorks::Parameters',
                                 'type' => 'OpsWorks_Parameters'
                               },
               'AgentInstallerUrl' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStackProvisioningParametersResult

=head1 ATTRIBUTES


=head2 AgentInstallerUrl => Str

The AWS OpsWorks Stacks agent installer's URL.


=head2 Parameters => OpsWorks_Parameters

An embedded object that contains the provisioning parameters.


=head2 _request_id => Str


=cut

1;