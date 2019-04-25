
package Paws::RDS::PromoteReadReplica;
  use Moose;
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::PromoteReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PromoteReadReplica - Arguments for method PromoteReadReplica on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PromoteReadReplica on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method PromoteReadReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PromoteReadReplica.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To promote a read replica
    # This example promotes the specified read replica and sets its backup
    # retention period and preferred backup window.
    my $PromoteReadReplicaResult = $rds->PromoteReadReplica(
      {
        'BackupRetentionPeriod' => 1,
        'DBInstanceIdentifier'  => 'mydbreadreplica',
        'PreferredBackupWindow' => '03:30-04:00'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/PromoteReadReplica>

=head1 ATTRIBUTES


=head2 BackupRetentionPeriod => Int

The number of days to retain automated backups. Setting this parameter
to a positive number enables backups. Setting this parameter to 0
disables automated backups.

Default: 1

Constraints:

=over

=item *

Must be a value from 0 to 8

=back




=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must match the identifier of an existing Read Replica DB instance.

=back

Example: C<mydbinstance>



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PromoteReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

