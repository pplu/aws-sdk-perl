
package Paws::IoT::UpdateAccountAuditConfiguration;
  use Moose;
  has AuditCheckConfigurations => (is => 'ro', isa => 'Paws::IoT::AuditCheckConfigurations', traits => ['NameInRequest'], request_name => 'auditCheckConfigurations');
  has AuditNotificationTargetConfigurations => (is => 'ro', isa => 'Paws::IoT::AuditNotificationTargetConfigurations', traits => ['NameInRequest'], request_name => 'auditNotificationTargetConfigurations');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountAuditConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateAccountAuditConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateAccountAuditConfiguration - Arguments for method UpdateAccountAuditConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountAuditConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateAccountAuditConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountAuditConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateAccountAuditConfigurationResponse =
      $iot->UpdateAccountAuditConfiguration(
      AuditCheckConfigurations => {
        'MyAuditCheckName' => {
          Enabled => 1,    # OPTIONAL
        },
      },    # OPTIONAL
      AuditNotificationTargetConfigurations => {
        'SNS' => {
          Enabled   => 1,                # OPTIONAL
          RoleArn   => 'MyRoleArn',      # min: 20, max: 2048; OPTIONAL
          TargetArn => 'MyTargetArn',    # OPTIONAL
        },    # key: values: SNS
      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateAccountAuditConfiguration>

=head1 ATTRIBUTES


=head2 AuditCheckConfigurations => L<Paws::IoT::AuditCheckConfigurations>

Specifies which audit checks are enabled and disabled for this account.
Use C<DescribeAccountAuditConfiguration> to see the list of all checks
including those that are currently enabled.

Note that some data collection may begin immediately when certain
checks are enabled. When a check is disabled, any data collected so far
in relation to the check is deleted.

You cannot disable a check if it is used by any scheduled audit. You
must first delete the check from the scheduled audit or delete the
scheduled audit itself.

On the first call to C<UpdateAccountAuditConfiguration> this parameter
is required and must specify at least one enabled check.



=head2 AuditNotificationTargetConfigurations => L<Paws::IoT::AuditNotificationTargetConfigurations>

Information about the targets to which audit notifications are sent.



=head2 RoleArn => Str

The ARN of the role that grants permission to AWS IoT to access
information about your devices, policies, certificates and other items
as necessary when performing an audit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountAuditConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

