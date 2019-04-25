
package Paws::Lightsail::CreateRelationalDatabaseFromSnapshot;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has RelationalDatabaseBundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseBundleId' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has RelationalDatabaseSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseSnapshotName' );
  has RestoreTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restoreTime' );
  has SourceRelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRelationalDatabaseName' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useLatestRestorableTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRelationalDatabaseFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateRelationalDatabaseFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateRelationalDatabaseFromSnapshot - Arguments for method CreateRelationalDatabaseFromSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRelationalDatabaseFromSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateRelationalDatabaseFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRelationalDatabaseFromSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateRelationalDatabaseFromSnapshotResult =
      $lightsail->CreateRelationalDatabaseFromSnapshot(
      RelationalDatabaseName         => 'MyResourceName',
      AvailabilityZone               => 'Mystring',               # OPTIONAL
      PubliclyAccessible             => 1,                        # OPTIONAL
      RelationalDatabaseBundleId     => 'Mystring',               # OPTIONAL
      RelationalDatabaseSnapshotName => 'MyResourceName',         # OPTIONAL
      RestoreTime                    => '1970-01-01T01:00:00',    # OPTIONAL
      SourceRelationalDatabaseName   => 'MyResourceName',         # OPTIONAL
      Tags                           => [
        {
          Key   => 'MyTagKey',                                    # OPTIONAL
          Value => 'MyTagValue',                                  # OPTIONAL
        },
        ...
      ],                                                          # OPTIONAL
      UseLatestRestorableTime => 1,                               # OPTIONAL
      );

    # Results:
    my $Operations = $CreateRelationalDatabaseFromSnapshotResult->Operations;

# Returns a L<Paws::Lightsail::CreateRelationalDatabaseFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateRelationalDatabaseFromSnapshot>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which to create your new database. Use the
C<us-east-2a> case-sensitive format.

You can get a list of Availability Zones by using the C<get regions>
operation. Be sure to add the C<include relational database
Availability Zones> parameter to your request.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for your new database. A value of
C<true> specifies a database that is available to resources outside of
your Lightsail account. A value of C<false> specifies a database that
is available only to your Lightsail resources in the same region as
your database.



=head2 RelationalDatabaseBundleId => Str

The bundle ID for your new database. A bundle describes the performance
specifications for your database.

You can get a list of database bundle IDs by using the C<get relational
database bundles> operation.

When creating a new database from a snapshot, you cannot choose a
bundle that is smaller than the bundle of the source database.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name to use for your new database.

Constraints:

=over

=item *

Must contain from 2 to 255 alphanumeric characters, or hyphens.

=item *

The first and last character must be a letter or number.

=back




=head2 RelationalDatabaseSnapshotName => Str

The name of the database snapshot from which to create your new
database.



=head2 RestoreTime => Str

The date and time to restore your database from.

Constraints:

=over

=item *

Must be before the latest restorable time for the database.

=item *

Cannot be specified if the C<use latest restorable time> parameter is
C<true>.

=item *

Specified in Universal Coordinated Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use a restore time of October 1, 2018, at 8
PM UTC, then you input C<1538424000> as the restore time.

=back




=head2 SourceRelationalDatabaseName => Str

The name of the source database.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.



=head2 UseLatestRestorableTime => Bool

Specifies whether your database is restored from the latest backup
time. A value of C<true> restores from the latest backup time.

Default: C<false>

Constraints: Cannot be specified if the C<restore time> parameter is
provided.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRelationalDatabaseFromSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

