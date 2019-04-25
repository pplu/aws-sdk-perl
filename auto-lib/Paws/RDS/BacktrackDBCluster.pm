
package Paws::RDS::BacktrackDBCluster;
  use Moose;
  has BacktrackTo => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Force => (is => 'ro', isa => 'Bool');
  has UseEarliestTimeOnPointInTimeUnavailable => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BacktrackDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterBacktrack');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BacktrackDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::BacktrackDBCluster - Arguments for method BacktrackDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BacktrackDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method BacktrackDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BacktrackDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBClusterBacktrack = $rds->BacktrackDBCluster(
      BacktrackTo         => '1970-01-01T01:00:00',
      DBClusterIdentifier => 'MyString',
      Force               => 1,                       # OPTIONAL
      UseEarliestTimeOnPointInTimeUnavailable => 1,   # OPTIONAL
    );

    # Results:
    my $BacktrackIdentifier = $DBClusterBacktrack->BacktrackIdentifier;
    my $BacktrackRequestCreationTime =
      $DBClusterBacktrack->BacktrackRequestCreationTime;
    my $BacktrackTo         = $DBClusterBacktrack->BacktrackTo;
    my $BacktrackedFrom     = $DBClusterBacktrack->BacktrackedFrom;
    my $DBClusterIdentifier = $DBClusterBacktrack->DBClusterIdentifier;
    my $Status              = $DBClusterBacktrack->Status;

    # Returns a L<Paws::RDS::DBClusterBacktrack> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/BacktrackDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BacktrackTo => Str

The timestamp of the time to backtrack the DB cluster to, specified in
ISO 8601 format. For more information about ISO 8601, see the ISO8601
Wikipedia page. (http://en.wikipedia.org/wiki/ISO_8601)

If the specified time is not a consistent time for the DB cluster,
Aurora automatically chooses the nearest possible consistent time for
the DB cluster.

Constraints:

=over

=item *

Must contain a valid ISO 8601 timestamp.

=item *

Can't contain a timestamp set in the future.

=back

Example: C<2017-07-08T18:00Z>



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier of the DB cluster to be backtracked. This
parameter is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 Force => Bool

A value that, if specified, forces the DB cluster to backtrack when
binary logging is enabled. Otherwise, an error occurs when binary
logging is enabled.



=head2 UseEarliestTimeOnPointInTimeUnavailable => Bool

If I<BacktrackTo> is set to a timestamp earlier than the earliest
backtrack time, this value backtracks the DB cluster to the earliest
possible backtrack time. Otherwise, an error occurs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BacktrackDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

