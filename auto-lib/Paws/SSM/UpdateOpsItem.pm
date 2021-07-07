
package Paws::SSM::UpdateOpsItem;
  use Moose;
  has ActualEndTime => (is => 'ro', isa => 'Str');
  has ActualStartTime => (is => 'ro', isa => 'Str');
  has Category => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemNotification]');
  has OperationalData => (is => 'ro', isa => 'Paws::SSM::OpsItemOperationalData');
  has OperationalDataToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OpsItemId => (is => 'ro', isa => 'Str', required => 1);
  has PlannedEndTime => (is => 'ro', isa => 'Str');
  has PlannedStartTime => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has RelatedOpsItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::RelatedOpsItem]');
  has Severity => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOpsItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateOpsItemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateOpsItem - Arguments for method UpdateOpsItem on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOpsItem on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateOpsItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOpsItem.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateOpsItemResponse = $ssm->UpdateOpsItem(
      OpsItemId       => 'MyOpsItemId',
      ActualEndTime   => '1970-01-01T01:00:00',     # OPTIONAL
      ActualStartTime => '1970-01-01T01:00:00',     # OPTIONAL
      Category        => 'MyOpsItemCategory',       # OPTIONAL
      Description     => 'MyOpsItemDescription',    # OPTIONAL
      Notifications   => [
        {
          Arn => 'MyString',                        # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OperationalData => {
        'MyOpsItemDataKey' => {
          Type =>
            'SearchableString',    # values: SearchableString, String; OPTIONAL
          Value => 'MyOpsItemDataValueString',    # OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      OperationalDataToDelete => [
        'MyString', ...    # OPTIONAL
      ],    # OPTIONAL
      PlannedEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      PlannedStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      Priority         => 1,                        # OPTIONAL
      RelatedOpsItems  => [
        {
          OpsItemId => 'MyString',                  # OPTIONAL

        },
        ...
      ],    # OPTIONAL
      Severity => 'MyOpsItemSeverity',    # OPTIONAL
      Status   => 'Open',                 # OPTIONAL
      Title    => 'MyOpsItemTitle',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateOpsItem>

=head1 ATTRIBUTES


=head2 ActualEndTime => Str

The time a runbook workflow ended. Currently reported only for the
OpsItem type C</aws/changerequest>.



=head2 ActualStartTime => Str

The time a runbook workflow started. Currently reported only for the
OpsItem type C</aws/changerequest>.



=head2 Category => Str

Specify a new category for an OpsItem.



=head2 Description => Str

Update the information about the OpsItem. Provide enough information so
that users reading this OpsItem for the first time understand the
issue.



=head2 Notifications => ArrayRef[L<Paws::SSM::OpsItemNotification>]

The Amazon Resource Name (ARN) of an SNS topic where notifications are
sent when this OpsItem is edited or changed.



=head2 OperationalData => L<Paws::SSM::OpsItemOperationalData>

Add new keys or edit existing key-value pairs of the OperationalData
map in the OpsItem object.

Operational data is custom data that provides useful reference details
about the OpsItem. For example, you can specify log files, error
strings, license keys, troubleshooting tips, or other relevant data.
You enter operational data as key-value pairs. The key has a maximum
length of 128 characters. The value has a maximum size of 20 KB.

Operational data keys I<can't> begin with the following: amazon, aws,
amzn, ssm, /amazon, /aws, /amzn, /ssm.

You can choose to make the data searchable by other users in the
account or you can restrict search access. Searchable data means that
all users with access to the OpsItem Overview page (as provided by the
DescribeOpsItems API action) can view and search on the specified data.
Operational data that is not searchable is only viewable by users who
have access to the OpsItem (as provided by the GetOpsItem API action).

Use the C</aws/resources> key in OperationalData to specify a related
resource in the request. Use the C</aws/automations> key in
OperationalData to associate an Automation runbook with the OpsItem. To
view AWS CLI example commands that use these keys, see Creating
OpsItems manually
(https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems)
in the I<AWS Systems Manager User Guide>.



=head2 OperationalDataToDelete => ArrayRef[Str|Undef]

Keys that you want to remove from the OperationalData map.



=head2 B<REQUIRED> OpsItemId => Str

The ID of the OpsItem.



=head2 PlannedEndTime => Str

The time specified in a change request for a runbook workflow to end.
Currently supported only for the OpsItem type C</aws/changerequest>.



=head2 PlannedStartTime => Str

The time specified in a change request for a runbook workflow to start.
Currently supported only for the OpsItem type C</aws/changerequest>.



=head2 Priority => Int

The importance of this OpsItem in relation to other OpsItems in the
system.



=head2 RelatedOpsItems => ArrayRef[L<Paws::SSM::RelatedOpsItem>]

One or more OpsItems that share something in common with the current
OpsItems. For example, related OpsItems can include OpsItems with
similar error messages, impacted resources, or statuses for the
impacted resource.



=head2 Severity => Str

Specify a new severity for an OpsItem.



=head2 Status => Str

The OpsItem status. Status can be C<Open>, C<In Progress>, or
C<Resolved>. For more information, see Editing OpsItem details
(https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details)
in the I<AWS Systems Manager User Guide>.

Valid values are: C<"Open">, C<"InProgress">, C<"Resolved">, C<"Pending">, C<"TimedOut">, C<"Cancelling">, C<"Cancelled">, C<"Failed">, C<"CompletedWithSuccess">, C<"CompletedWithFailure">, C<"Scheduled">, C<"RunbookInProgress">, C<"PendingChangeCalendarOverride">, C<"ChangeCalendarOverrideApproved">, C<"ChangeCalendarOverrideRejected">, C<"PendingApproval">, C<"Approved">, C<"Rejected">

=head2 Title => Str

A short heading that describes the nature of the OpsItem and the
impacted resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOpsItem in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

