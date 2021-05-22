
package Paws::RDS::ModifyGlobalCluster;
  use Moose;
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has NewGlobalClusterIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyGlobalCluster - Arguments for method ModifyGlobalCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyGlobalCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyGlobalClusterResult = $rds->ModifyGlobalCluster(
      AllowMajorVersionUpgrade   => 1,             # OPTIONAL
      DeletionProtection         => 1,             # OPTIONAL
      EngineVersion              => 'MyString',    # OPTIONAL
      GlobalClusterIdentifier    => 'MyString',    # OPTIONAL
      NewGlobalClusterIdentifier => 'MyString',    # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $ModifyGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::RDS::ModifyGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyGlobalCluster>

=head1 ATTRIBUTES


=head2 AllowMajorVersionUpgrade => Bool

A value that indicates whether major version upgrades are allowed.

Constraints: You must allow major version upgrades when specifying a
value for the C<EngineVersion> parameter that is a different major
version than the DB cluster's current version.

If you upgrade the major version of a global database, the cluster and
DB instance parameter groups are set to the default parameter groups
for the new version. Apply any custom parameter groups after completing
the upgrade.



=head2 DeletionProtection => Bool

Indicates if the global database cluster has deletion protection
enabled. The global database cluster can't be deleted when deletion
protection is enabled.



=head2 EngineVersion => Str

The version number of the database engine to which you want to upgrade.
Changing this parameter results in an outage. The change is applied
during the next maintenance window unless C<ApplyImmediately> is
enabled.

To list all of the available engine versions for C<aurora> (for MySQL
5.6-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora --query
'*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'>

To list all of the available engine versions for C<aurora-mysql> (for
MySQL 5.7-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
'*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'>

To list all of the available engine versions for C<aurora-postgresql>,
use the following command:

C<aws rds describe-db-engine-versions --engine aurora-postgresql
--query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'>



=head2 GlobalClusterIdentifier => Str

The DB cluster identifier for the global cluster being modified. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing global database cluster.

=back




=head2 NewGlobalClusterIdentifier => Str

The new cluster identifier for the global database cluster when
modifying a global database cluster. This value is stored as a
lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

The first character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyGlobalCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

