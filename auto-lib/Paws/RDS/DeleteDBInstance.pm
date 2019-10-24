# Generated from callargs_class.tt

package Paws::RDS::DeleteDBInstance;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RDS::Types qw//;
  has DBInstanceIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeleteAutomatedBackups => (is => 'ro', isa => Bool, predicate => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has SkipFinalSnapshot => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteDBInstance');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DeleteDBInstanceResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DeleteDBInstanceResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SkipFinalSnapshot' => {
                                        'type' => 'Bool'
                                      },
               'DBInstanceIdentifier' => {
                                           'type' => 'Str'
                                         },
               'FinalDBSnapshotIdentifier' => {
                                                'type' => 'Str'
                                              },
               'DeleteAutomatedBackups' => {
                                             'type' => 'Bool'
                                           }
             },
  'IsRequired' => {
                    'DBInstanceIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBInstance - Arguments for method DeleteDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB instance.
    # This example deletes the specified DB instance.
    my $DeleteDBInstanceResult = $rds->DeleteDBInstance(
      'DBInstanceIdentifier' => 'mymysqlinstance',
      'SkipFinalSnapshot'    => 1
    );


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




=head2 DeleteAutomatedBackups => Bool

A value that indicates whether to remove automated backups immediately
after the DB instance is deleted. This parameter isn't case-sensitive.
The default is to remove automated backups immediately after the DB
instance is deleted.



=head2 FinalDBSnapshotIdentifier => Str

The C<DBSnapshotIdentifier> of the new C<DBSnapshot> created when the
C<SkipFinalSnapshot> parameter is disabled.

Specifying this parameter and also specifying to skip final DB snapshot
creation in SkipFinalShapshot results in an error.

Constraints:

=over

=item *

Must be 1 to 255 letters or numbers.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=item *

Can't be specified when deleting a Read Replica.

=back




=head2 SkipFinalSnapshot => Bool

A value that indicates whether to skip the creation of a final DB
snapshot before the DB instance is deleted. If skip is specified, no DB
snapshot is created. If skip is not specified, a DB snapshot is created
before the DB instance is deleted. By default, skip is not specified,
and the DB snapshot is created.

Note that when a DB instance is in a failure state and has a status of
'failed', 'incompatible-restore', or 'incompatible-network', it can
only be deleted when skip is specified.

Specify skip when deleting a Read Replica.

The FinalDBSnapshotIdentifier parameter must be specified if skip is
not specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

