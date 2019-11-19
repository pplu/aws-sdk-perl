package Paws::SSM::OpsItem;
  use Moose;
  has Category => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemNotification]');
  has OperationalData => (is => 'ro', isa => 'Paws::SSM::OpsItemOperationalData');
  has OpsItemId => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has RelatedOpsItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::RelatedOpsItem]');
  has Severity => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsItem object:

  $service_obj->Method(Att1 => { Category => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Operations engineers and IT professionals use OpsCenter to view,
investigate, and remediate operational issues impacting the performance
and health of their AWS resources. For more information, see AWS
Systems Manager OpsCenter
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
in the I<AWS Systems Manager User Guide>.

=head1 ATTRIBUTES


=head2 Category => Str

  An OpsItem category. Category options include: Availability, Cost,
Performance, Recovery, Security.


=head2 CreatedBy => Str

  The ARN of the AWS account that created the OpsItem.


=head2 CreatedTime => Str

  The date and time the OpsItem was created.


=head2 Description => Str

  The OpsItem description.


=head2 LastModifiedBy => Str

  The ARN of the AWS account that last updated the OpsItem.


=head2 LastModifiedTime => Str

  The date and time the OpsItem was last updated.


=head2 Notifications => ArrayRef[L<Paws::SSM::OpsItemNotification>]

  The Amazon Resource Name (ARN) of an SNS topic where notifications are
sent when this OpsItem is edited or changed.


=head2 OperationalData => L<Paws::SSM::OpsItemOperationalData>

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
OpsItems Manually
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems)
in the I<AWS Systems Manager User Guide>.


=head2 OpsItemId => Str

  The ID of the OpsItem.


=head2 Priority => Int

  The importance of this OpsItem in relation to other OpsItems in the
system.


=head2 RelatedOpsItems => ArrayRef[L<Paws::SSM::RelatedOpsItem>]

  One or more OpsItems that share something in common with the current
OpsItem. For example, related OpsItems can include OpsItems with
similar error messages, impacted resources, or statuses for the
impacted resource.


=head2 Severity => Str

  The severity of the OpsItem. Severity options range from 1 to 4.


=head2 Source => Str

  The origin of the OpsItem, such as Amazon EC2 or AWS Systems Manager.
The impacted resource is a subset of source.


=head2 Status => Str

  The OpsItem status. Status can be C<Open>, C<In Progress>, or
C<Resolved>. For more information, see Editing OpsItem Details
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html)
in the I<AWS Systems Manager User Guide>.


=head2 Title => Str

  A short heading that describes the nature of the OpsItem and the
impacted resource.


=head2 Version => Str

  The version of this OpsItem. Each time the OpsItem is edited the
version number increments by one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

