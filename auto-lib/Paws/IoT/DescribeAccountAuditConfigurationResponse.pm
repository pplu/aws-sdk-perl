
package Paws::IoT::DescribeAccountAuditConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AuditCheckConfigurations IoT_AuditNotificationTargetConfigurations/;
  has AuditCheckConfigurations => (is => 'ro', isa => IoT_AuditCheckConfigurations);
  has AuditNotificationTargetConfigurations => (is => 'ro', isa => IoT_AuditNotificationTargetConfigurations);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuditCheckConfigurations' => {
                                               'class' => 'Paws::IoT::AuditCheckConfigurations',
                                               'type' => 'IoT_AuditCheckConfigurations'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'AuditNotificationTargetConfigurations' => {
                                                            'type' => 'IoT_AuditNotificationTargetConfigurations',
                                                            'class' => 'Paws::IoT::AuditNotificationTargetConfigurations'
                                                          }
             },
  'NameInRequest' => {
                       'AuditCheckConfigurations' => 'auditCheckConfigurations',
                       'RoleArn' => 'roleArn',
                       'AuditNotificationTargetConfigurations' => 'auditNotificationTargetConfigurations'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAccountAuditConfigurationResponse

=head1 ATTRIBUTES


=head2 AuditCheckConfigurations => IoT_AuditCheckConfigurations

Which audit checks are enabled and disabled for this account.


=head2 AuditNotificationTargetConfigurations => IoT_AuditNotificationTargetConfigurations

Information about the targets to which audit notifications are sent for
this account.


=head2 RoleArn => Str

The ARN of the role that grants permission to AWS IoT to access
information about your devices, policies, certificates, and other items
as required when performing an audit.

On the first call to C<UpdateAccountAuditConfiguration>, this parameter
is required.


=head2 _request_id => Str


=cut

