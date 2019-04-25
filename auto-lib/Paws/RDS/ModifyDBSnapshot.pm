
package Paws::RDS::ModifyDBSnapshot;
  use Moose;
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSnapshot - Arguments for method ModifyDBSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyDBSnapshotResult = $rds->ModifyDBSnapshot(
      DBSnapshotIdentifier => 'MyString',
      EngineVersion        => 'MyString',    # OPTIONAL
      OptionGroupName      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DBSnapshot = $ModifyDBSnapshotResult->DBSnapshot;

    # Returns a L<Paws::RDS::ModifyDBSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier of the DB snapshot to modify.



=head2 EngineVersion => Str

The engine version to upgrade the DB snapshot to.

The following are the database engines and engine versions that are
available when you upgrade a DB snapshot.

B<MySQL>

=over

=item *

C<5.5.46> (supported for 5.1 DB snapshots)

=back

B<Oracle>

=over

=item *

C<12.1.0.2.v8> (supported for 12.1.0.1 DB snapshots)

=item *

C<11.2.0.4.v12> (supported for 11.2.0.2 DB snapshots)

=item *

C<11.2.0.4.v11> (supported for 11.2.0.3 DB snapshots)

=back




=head2 OptionGroupName => Str

The option group to identify with the upgraded DB snapshot.

You can specify this parameter when you upgrade an Oracle DB snapshot.
The same option group considerations apply when upgrading a DB snapshot
as when upgrading a DB instance. For more information, see Option Group
Considerations
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG)
in the I<Amazon RDS User Guide.>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

