
package Paws::Neptune::DeleteDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DeleteDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DeleteDBInstance - Arguments for method DeleteDBInstance on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBInstance on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DeleteDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DeleteDBInstanceResult = $rds->DeleteDBInstance(
      DBInstanceIdentifier      => 'MyString',
      FinalDBSnapshotIdentifier => 'MyString',    # OPTIONAL
      SkipFinalSnapshot         => 1,             # OPTIONAL
    );

    # Results:
    my $DBInstance = $DeleteDBInstanceResult->DBInstance;

    # Returns a L<Paws::Neptune::DeleteDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier for the DB instance to be deleted. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the name of an existing DB instance.

=back




=head2 FinalDBSnapshotIdentifier => Str

The DBSnapshotIdentifier of the new DBSnapshot created when
SkipFinalSnapshot is set to C<false>.

Specifying this parameter and also setting the SkipFinalShapshot
parameter to true results in an error.

Constraints:

=over

=item *

Must be 1 to 255 letters or numbers.

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=item *

Cannot be specified when deleting a Read Replica.

=back




=head2 SkipFinalSnapshot => Bool

Determines whether a final DB snapshot is created before the DB
instance is deleted. If C<true> is specified, no DBSnapshot is created.
If C<false> is specified, a DB snapshot is created before the DB
instance is deleted.

Note that when a DB instance is in a failure state and has a status of
'failed', 'incompatible-restore', or 'incompatible-network', it can
only be deleted when the SkipFinalSnapshot parameter is set to "true".

Specify C<true> when deleting a Read Replica.

The FinalDBSnapshotIdentifier parameter must be specified if
SkipFinalSnapshot is C<false>.

Default: C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBInstance in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

