# Generated from callargs_class.tt

package Paws::DocDB::CreateDBClusterSnapshot;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_Tag/;
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DocDB_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDBClusterSnapshot');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::CreateDBClusterSnapshotResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateDBClusterSnapshotResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotIdentifier' => {
                                                  'type' => 'Str'
                                                },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'Tags' => {
                           'class' => 'Paws::DocDB::Tag',
                           'type' => 'ArrayRef[DocDB_Tag]'
                         }
             },
  'IsRequired' => {
                    'DBClusterSnapshotIdentifier' => 1,
                    'DBClusterIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBClusterSnapshot - Arguments for method CreateDBClusterSnapshot on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBClusterSnapshot on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBClusterSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBClusterSnapshotResult = $rds->CreateDBClusterSnapshot(
      DBClusterIdentifier         => 'MyString',
      DBClusterSnapshotIdentifier => 'MyString',
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DBClusterSnapshot = $CreateDBClusterSnapshotResult->DBClusterSnapshot;

    # Returns a L<Paws::DocDB::CreateDBClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBClusterSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The identifier of the DB cluster to create a snapshot for. This
parameter is not case sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing C<DBCluster>.

=back

Example: C<my-cluster>



=head2 B<REQUIRED> DBClusterSnapshotIdentifier => Str

The identifier of the DB cluster snapshot. This parameter is stored as
a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster-snapshot1>



=head2 Tags => ArrayRef[DocDB_Tag]

The tags to be assigned to the DB cluster snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBClusterSnapshot in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

