package Paws::SSM::OpsItem;
  use Moose;
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

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

Operations engineers and IT professionals use the Systems Manager
OpsItems capability to view, investigate, and remediate operational
issues impacting the performance and health of their AWS resources. For
more information, see AWS Systems Manager OpsItems
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsItems.html)
in the I<AWS Systems Manager User Guide>.

=head1 ATTRIBUTES


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

This custom data is searchable, but with restrictions. For the
C<Searchable operational data> feature, all users with access to the
OpsItem Overview page (as provided by the DescribeOpsItems API action)
can view and search on the specified data. For the C<Private
operational data> feature, the data is only viewable by users who have
access to the OpsItem (as provided by the GetOpsItem API action).


=head2 OpsItemId => Str

  The ID of the OpsItem.


=head2 Priority => Int

  The importance of this OpsItem in relation to other OpsItems in the
system.


=head2 RelatedOpsItems => ArrayRef[L<Paws::SSM::RelatedOpsItem>]

  One or more OpsItems that share something in common with the current
OpsItems. For example, related OpsItems can include OpsItems with
similar error messages, impacted resources, or statuses for the
impacted resource.


=head2 Source => Str

  The origin of the OpsItem, such as Amazon EC2 or AWS Systems Manager.
The impacted resource is a subset of source.


=head2 Status => Str

  The OpsItem status. Status can be C<Open>, C<In Progress>, or
C<Resolved>. For more information, see Editing OpsItem Details
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsItems-working-with-OpsItems-editing-details.html)
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

