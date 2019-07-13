
package Paws::IoT::DescribeAccountAuditConfigurationResponse;
  use Moose;
  has AuditCheckConfigurations => (is => 'ro', isa => 'Paws::IoT::AuditCheckConfigurations', traits => ['NameInRequest'], request_name => 'auditCheckConfigurations');
  has AuditNotificationTargetConfigurations => (is => 'ro', isa => 'Paws::IoT::AuditNotificationTargetConfigurations', traits => ['NameInRequest'], request_name => 'auditNotificationTargetConfigurations');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAccountAuditConfigurationResponse

=head1 ATTRIBUTES


=head2 AuditCheckConfigurations => L<Paws::IoT::AuditCheckConfigurations>

Which audit checks are enabled and disabled for this account.


=head2 AuditNotificationTargetConfigurations => L<Paws::IoT::AuditNotificationTargetConfigurations>

Information about the targets to which audit notifications are sent for
this account.


=head2 RoleArn => Str

The ARN of the role that grants permission to AWS IoT to access
information about your devices, policies, certificates and other items
as necessary when performing an audit.

On the first call to C<UpdateAccountAuditConfiguration> this parameter
is required.


=head2 _request_id => Str


=cut

