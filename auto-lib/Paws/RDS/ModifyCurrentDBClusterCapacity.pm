
package Paws::RDS::ModifyCurrentDBClusterCapacity;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SecondsBeforeTimeout => (is => 'ro', isa => 'Int');
  has TimeoutAction => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCurrentDBClusterCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterCapacityInfo');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCurrentDBClusterCapacityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyCurrentDBClusterCapacity - Arguments for method ModifyCurrentDBClusterCapacity on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCurrentDBClusterCapacity on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyCurrentDBClusterCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCurrentDBClusterCapacity.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBClusterCapacityInfo = $rds->ModifyCurrentDBClusterCapacity(
      DBClusterIdentifier  => 'MyString',
      Capacity             => 1,             # OPTIONAL
      SecondsBeforeTimeout => 1,             # OPTIONAL
      TimeoutAction        => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CurrentCapacity      = $DBClusterCapacityInfo->CurrentCapacity;
    my $DBClusterIdentifier  = $DBClusterCapacityInfo->DBClusterIdentifier;
    my $PendingCapacity      = $DBClusterCapacityInfo->PendingCapacity;
    my $SecondsBeforeTimeout = $DBClusterCapacityInfo->SecondsBeforeTimeout;
    my $TimeoutAction        = $DBClusterCapacityInfo->TimeoutAction;

    # Returns a L<Paws::RDS::DBClusterCapacityInfo> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyCurrentDBClusterCapacity>

=head1 ATTRIBUTES


=head2 Capacity => Int

The DB cluster capacity.

Constraints:

=over

=item *

Value must be C<2>, C<4>, C<8>, C<16>, C<32>, C<64>, C<128>, or C<256>.

=back




=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the cluster being modified. This
parameter is not case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing DB cluster.

=back




=head2 SecondsBeforeTimeout => Int

The amount of time, in seconds, that Aurora Serverless tries to find a
scaling point to perform seamless scaling before enforcing the timeout
action. The default is 300.

=over

=item *

Value must be from 10 through 600.

=back




=head2 TimeoutAction => Str

The action to take when the timeout is reached, either
C<ForceApplyCapacityChange> or C<RollbackCapacityChange>.

C<ForceApplyCapacityChange>, the default, sets the capacity to the
specified value as soon as possible.

C<RollbackCapacityChange> ignores the capacity change if a scaling
point is not found in the timeout period.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCurrentDBClusterCapacity in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

