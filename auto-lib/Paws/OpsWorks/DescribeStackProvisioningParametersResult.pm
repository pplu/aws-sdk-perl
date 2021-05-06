
package Paws::OpsWorks::DescribeStackProvisioningParametersResult;
  use Moose;
  has AgentInstallerUrl => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::OpsWorks::Parameters');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStackProvisioningParametersResult

=head1 ATTRIBUTES


=head2 AgentInstallerUrl => Str

The AWS OpsWorks Stacks agent installer's URL.


=head2 Parameters => L<Paws::OpsWorks::Parameters>

An embedded object that contains the provisioning parameters.


=head2 _request_id => Str


=cut

1;