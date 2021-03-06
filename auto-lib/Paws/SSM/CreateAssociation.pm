
package Paws::SSM::CreateAssociation;
  use Moose;
  has ApplyOnlyAtCronInterval => (is => 'ro', isa => 'Bool');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AutomationTargetParameterName => (is => 'ro', isa => 'Str');
  has CalendarNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has SyncCompliance => (is => 'ro', isa => 'Str');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociation - Arguments for method CreateAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateAssociationResult = $ssm->CreateAssociation(
      Name                          => 'MyDocumentARN',
      ApplyOnlyAtCronInterval       => 1,                      # OPTIONAL
      AssociationName               => 'MyAssociationName',    # OPTIONAL
      AutomationTargetParameterName =>
        'MyAutomationTargetParameterName',                     # OPTIONAL
      CalendarNames      => [ 'MyCalendarNameOrARN', ... ],    # OPTIONAL
      ComplianceSeverity => 'CRITICAL',                        # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion',               # OPTIONAL
      InstanceId         => 'MyInstanceId',                    # OPTIONAL
      MaxConcurrency     => 'MyMaxConcurrency',                # OPTIONAL
      MaxErrors          => 'MyMaxErrors',                     # OPTIONAL
      OutputLocation     => {
        S3Location => {
          OutputS3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
          OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # max: 500; OPTIONAL
          OutputS3Region     => 'MyS3Region',        # min: 3, max: 20; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
      ,                                                # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      SyncCompliance     => 'AUTO',                    # OPTIONAL
      TargetLocations    => [
        {
          Accounts          => [ 'MyAccount', ... ], # min: 1, max: 50; OPTIONAL
          ExecutionRoleName =>
            'MyExecutionRoleName',                   # min: 1, max: 64; OPTIONAL
          Regions => [ 'MyRegion', ... ],            # min: 1, max: 50; OPTIONAL
          TargetLocationMaxConcurrency => 'MyMaxConcurrency',   # min: 1, max: 7
          TargetLocationMaxErrors      => 'MyMaxErrors',        # min: 1, max: 7
        },
        ...
      ],    # OPTIONAL
      Targets => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AssociationDescription =
      $CreateAssociationResult->AssociationDescription;

    # Returns a L<Paws::SSM::CreateAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateAssociation>

=head1 ATTRIBUTES


=head2 ApplyOnlyAtCronInterval => Bool

By default, when you create a new association, the system runs it
immediately after it is created and then according to the schedule you
specified. Specify this option if you don't want an association to run
immediately after you create it. This parameter is not supported for
rate expressions.



=head2 AssociationName => Str

Specify a descriptive name for the association.



=head2 AutomationTargetParameterName => Str

Specify the target for the association. This target is required for
associations that use an Automation document and target resources by
using rate controls.



=head2 CalendarNames => ArrayRef[Str|Undef]

The names or Amazon Resource Names (ARNs) of the Systems Manager Change
Calendar type documents you want to gate your associations under. The
associations only run when that Change Calendar is open. For more
information, see AWS Systems Manager Change Calendar
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar).



=head2 ComplianceSeverity => Str

The severity level to assign to the association.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"UNSPECIFIED">

=head2 DocumentVersion => Str

The document version you want to associate with the target(s). Can be a
specific version or the default version.



=head2 InstanceId => Str

The instance ID.

C<InstanceId> has been deprecated. To specify an instance ID for an
association, use the C<Targets> parameter. Requests that include the
parameter C<InstanceID> with SSM documents that use schema version 2.0
or later will fail. In addition, if you use the parameter
C<InstanceId>, you cannot use the parameters C<AssociationName>,
C<DocumentVersion>, C<MaxErrors>, C<MaxConcurrency>, C<OutputLocation>,
or C<ScheduleExpression>. To use these parameters, you must use the
C<Targets> parameter.



=head2 MaxConcurrency => Str

The maximum number of targets allowed to run the association at the
same time. You can specify a number, for example 10, or a percentage of
the target set, for example 10%. The default value is 100%, which means
all targets run the association at the same time.

If a new instance starts and attempts to run an association while
Systems Manager is running MaxConcurrency associations, the association
is allowed to run. During the next association interval, the new
instance will process its association within the limit specified for
MaxConcurrency.



=head2 MaxErrors => Str

The number of errors that are allowed before the system stops sending
requests to run the association on additional targets. You can specify
either an absolute number of errors, for example 10, or a percentage of
the target set, for example 10%. If you specify 3, for example, the
system stops sending requests when the fourth error is received. If you
specify 0, then the system stops sending requests after the first error
is returned. If you run an association on 50 instances and set MaxError
to 10%, then the system stops sending the request when the sixth error
is received.

Executions that are already running an association when MaxErrors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set MaxConcurrency to 1 so that executions proceed
one at a time.



=head2 B<REQUIRED> Name => Str

The name of the SSM document that contains the configuration
information for the instance. You can specify Command or Automation
documents.

You can specify AWS-predefined documents, documents you created, or a
document that is shared with you from another account.

For SSM documents that are shared with you from other AWS accounts, you
must specify the complete SSM document ARN, in the following format:

C<arn:I<partition>:ssm:I<region>:I<account-id>:document/I<document-name>>

For example:

C<arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document>

For AWS-predefined documents and SSM documents you created in your
account, you only need to specify the document name. For example,
C<AWS-ApplyPatchBaseline> or C<My-Document>.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An S3 bucket where you want to store the output details of the request.



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters for the runtime configuration of the document.



=head2 ScheduleExpression => Str

A cron expression when the association will be applied to the
target(s).



=head2 SyncCompliance => Str

The mode for generating association compliance. You can specify C<AUTO>
or C<MANUAL>. In C<AUTO> mode, the system uses the status of the
association execution to determine the compliance status. If the
association execution runs successfully, then the association is
C<COMPLIANT>. If the association execution doesn't run successfully,
the association is C<NON-COMPLIANT>.

In C<MANUAL> mode, you must specify the C<AssociationId> as a parameter
for the PutComplianceItems API action. In this case, compliance data is
not managed by State Manager. It is managed by your direct call to the
PutComplianceItems API action.

By default, all associations use C<AUTO> mode.

Valid values are: C<"AUTO">, C<"MANUAL">

=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

A location is a combination of AWS Regions and AWS accounts where you
want to run the association. Use this action to create an association
in multiple Regions and multiple accounts.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets for the association. You can target instances by using
tags, AWS Resource Groups, all instances in an AWS account, or
individual instance IDs. For more information about choosing targets
for an association, see Using targets and rate controls with State
Manager associations
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html)
in the I<AWS Systems Manager User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

