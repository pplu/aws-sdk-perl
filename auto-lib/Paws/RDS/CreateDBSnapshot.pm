# Generated from callargs_class.tt

package Paws::RDS::CreateDBSnapshot;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_Tag/;
  has DBInstanceIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDBSnapshot');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::CreateDBSnapshotResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateDBSnapshotResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBInstanceIdentifier' => {
                                           'type' => 'Str'
                                         },
               'DBSnapshotIdentifier' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         }
             },
  'IsRequired' => {
                    'DBInstanceIdentifier' => 1,
                    'DBSnapshotIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBSnapshot - Arguments for method CreateDBSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB snapshot.
    # This example creates a DB snapshot.
    my $CreateDBSnapshotResult = $rds->CreateDBSnapshot(
      'DBInstanceIdentifier' => 'mymysqlinstance',
      'DBSnapshotIdentifier' => 'mydbsnapshot'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The identifier of the DB instance that you want to create the snapshot
of.

Constraints:

=over

=item *

Must match the identifier of an existing DBInstance.

=back




=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier for the DB snapshot.

Constraints:

=over

=item *

Can't be null, empty, or blank

=item *

Must contain from 1 to 255 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>



=head2 Tags => ArrayRef[RDS_Tag]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

