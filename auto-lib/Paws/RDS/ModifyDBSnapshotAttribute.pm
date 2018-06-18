
package Paws::RDS::ModifyDBSnapshotAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ValuesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ValuesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBSnapshotAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshotAttributeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSnapshotAttribute - Arguments for method ModifyDBSnapshotAttribute on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBSnapshotAttribute on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBSnapshotAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBSnapshotAttribute.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To change DB snapshot attributes
    # This example adds the specified attribute for the specified DB snapshot.
    my $ModifyDBSnapshotAttributeResult = $rds->ModifyDBSnapshotAttribute(
      {
        'AttributeName'        => 'restore',
        'DBSnapshotIdentifier' => 'mydbsnapshot',
        'ValuesToAdd'          => ['all']
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBSnapshotAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the DB snapshot attribute to modify.

To manage authorization for other AWS accounts to copy or restore a
manual DB snapshot, set this value to C<restore>.



=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier for the DB snapshot to modify the attributes for.



=head2 ValuesToAdd => ArrayRef[Str|Undef]

A list of DB snapshot attributes to add to the attribute specified by
C<AttributeName>.

To authorize other AWS accounts to copy or restore a manual snapshot,
set this list to include one or more AWS account IDs, or C<all> to make
the manual DB snapshot restorable by any AWS account. Do not add the
C<all> value for any manual DB snapshots that contain private
information that you don't want available to all AWS accounts.



=head2 ValuesToRemove => ArrayRef[Str|Undef]

A list of DB snapshot attributes to remove from the attribute specified
by C<AttributeName>.

To remove authorization for other AWS accounts to copy or restore a
manual snapshot, set this list to include one or more AWS account
identifiers, or C<all> to remove authorization for any AWS account to
copy or restore the DB snapshot. If you specify C<all>, an AWS account
whose account ID is explicitly added to the C<restore> attribute can
still copy or restore the manual DB snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBSnapshotAttribute in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

