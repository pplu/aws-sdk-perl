
package Paws::RDS::ModifyDBSnapshotAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ValuesToAdd => (is => 'ro', isa => 'ArrayRef[Str]');
  has ValuesToRemove => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBSnapshotAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshotAttributeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSnapshotAttribute - Arguments for method ModifyDBSnapshotAttribute on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBSnapshotAttribute on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method ModifyDBSnapshotAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBSnapshotAttribute.

As an example:

  $service_obj->ModifyDBSnapshotAttribute(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AttributeName => Str

The name of the DB snapshot attribute to modify.

To manage authorization for other AWS accounts to copy or restore a
manual DB snapshot, this value is C<restore>.



=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier for the DB snapshot to modify the attributes for.



=head2 ValuesToAdd => ArrayRef[Str]

A list of DB snapshot attributes to add to the attribute specified by
C<AttributeName>.

To authorize other AWS Accounts to copy or restore a manual snapshot,
this is one or more AWS account identifiers, or C<all> to make the
manual DB snapshot restorable by any AWS account. Do not add the C<all>
value for any manual DB snapshots that contain private information that
you do not want to be available to all AWS accounts.



=head2 ValuesToRemove => ArrayRef[Str]

A list of DB snapshot attributes to remove from the attribute specified
by C<AttributeName>.

To remove authorization for other AWS Accounts to copy or restore a
manual snapshot, this is one or more AWS account identifiers, or C<all>
to remove authorization for any AWS account to copy or restore the DB
snapshot. If you specify C<all>, AWS accounts that have their account
identifier explicitly added to the C<restore> attribute can still copy
or restore the manual DB snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBSnapshotAttribute in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

