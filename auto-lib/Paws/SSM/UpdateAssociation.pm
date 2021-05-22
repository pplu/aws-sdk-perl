
package Paws::SSM::UpdateAssociation;
  use Moose;
  has ApplyOnlyAtCronInterval => (is => 'ro', isa => 'Bool');
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has AssociationName => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has AutomationTargetParameterName => (is => 'ro', isa => 'Str');
  has CalendarNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has SyncCompliance => (is => 'ro', isa => 'Str');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociation - Arguments for method UpdateAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateAssociationResult = $ssm->UpdateAssociation(
      AssociationId           => 'MyAssociationId',
      ApplyOnlyAtCronInterval => 1,                         # OPTIONAL
      AssociationName         => 'MyAssociationName',       # OPTIONAL
      AssociationVersion      => 'MyAssociationVersion',    # OPTIONAL
      AutomationTargetParameterName =>
        'MyAutomationTargetParameterName',                  # OPTIONAL
      CalendarNames      => [ 'MyCalendarNameOrARN', ... ], # OPTIONAL
      ComplianceSeverity => 'CRITICAL',                     # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion',            # OPTIONAL
      MaxConcurrency     => 'MyMaxConcurrency',             # OPTIONAL
      MaxErrors          => 'MyMaxErrors',                  # OPTIONAL
      Name               => 'MyDocumentARN',                # OPTIONAL
      OutputLocation     => {
        S3Location => {
          OutputS3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
          OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # max: 500; OPTIONAL
          OutputS3Region     => 'MyS3Region',        # min: 3, max: 20; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
      ,     # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      SyncCompliance     => 'AUTO',                    # OPTIONAL
      TargetLocations    => [
        {
          Accounts => [ 'MyAccount', ... ],    # min: 1, max: 50; OPTIONAL
          ExecutionRoleName =>
            'MyExecutionRoleName',             # min: 1, max: 64; OPTIONAL
          Regions => [ 'MyRegion', ... ],      # min: 1, max: 50; OPTIONAL
          TargetLocationMaxConcurrency => 'MyMaxConcurrency',   # min: 1, max: 7
          TargetLocationMaxErrors      => 'MyMaxErrors',        # min: 1, max: 7
        },
        ...
      ],                                                        # OPTIONAL
      Targets => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $AssociationDescription =
      $UpdateAssociationResult->AssociationDescription;

    # Returns a L<Paws::SSM::UpdateAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateAssociation>

=head1 ATTRIBUTES


=head2 ApplyOnlyAtCronInterval => Bool

By default, when you update an association, the system runs it
immediately after it is updated and then according to the schedule you
specified. Specify this option if you don't want an association to run
immediately after you update it. This parameter is not supported for
rate expressions.

Also, if you specified this option when you created the association,
you can reset it. To do so, specify the
C<no-apply-only-at-cron-interval> parameter when you update the
association from the command line. This parameter forces the
association to run immediately after updating it and according to the
interval specified.



=head2 B<REQUIRED> AssociationId => Str

The ID of the association you want to update.



=head2 AssociationName => Str

The name of the association that you want to update.



=head2 AssociationVersion => Str

This parameter is provided for concurrency control purposes. You must
specify the latest association version in the service. If you want to
ensure that this request succeeds, either specify C<$LATEST>, or omit
this parameter.



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

The document version you want update for the association.



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



=head2 Name => Str

The name of the SSM document that contains the configuration
information for the instance. You can specify Command or Automation
documents.

You can specify AWS-predefined documents, documents you created, or a
document that is shared with you from another account.

For SSM documents that are shared with you from other AWS accounts, you
must specify the complete SSM document ARN, in the following format:

C<arn:aws:ssm:I<region>:I<account-id>:document/I<document-name>>

For example:

C<arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document>

For AWS-predefined documents and SSM documents you created in your
account, you only need to specify the document name. For example,
C<AWS-ApplyPatchBaseline> or C<My-Document>.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An S3 bucket where you want to store the results of this request.



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters you want to update for the association. If you create a
parameter using Parameter Store, you can reference the parameter using
{{ssm:parameter-name}}



=head2 ScheduleExpression => Str

The cron expression used to schedule the association that you want to
update.



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
want to run the association. Use this action to update an association
in multiple Regions and multiple accounts.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

