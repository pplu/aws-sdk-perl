
package Paws::GameLift::DescribeScalingPolicies;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeScalingPoliciesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScalingPolicies - Arguments for method DescribeScalingPolicies on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPolicies on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeScalingPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPolicies.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeScalingPoliciesOutput = $gamelift->DescribeScalingPolicies(
      FleetId      => 'MyFleetId',
      Limit        => 1,                          # OPTIONAL
      NextToken    => 'MyNonZeroAndMaxString',    # OPTIONAL
      StatusFilter => 'ACTIVE',                   # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeScalingPoliciesOutput->NextToken;
    my $ScalingPolicies = $DescribeScalingPoliciesOutput->ScalingPolicies;

    # Returns a L<Paws::GameLift::DescribeScalingPoliciesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeScalingPolicies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to retrieve scaling policies for.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.



=head2 StatusFilter => Str

Scaling policy status to filter results on. A scaling policy is only in
force when in an C<ACTIVE> status.

=over

=item *

B<ACTIVE> -- The scaling policy is currently in force.

=item *

B<UPDATEREQUESTED> -- A request to update the scaling policy has been
received.

=item *

B<UPDATING> -- A change is being made to the scaling policy.

=item *

B<DELETEREQUESTED> -- A request to delete the scaling policy has been
received.

=item *

B<DELETING> -- The scaling policy is being deleted.

=item *

B<DELETED> -- The scaling policy has been deleted.

=item *

B<ERROR> -- An error occurred in creating the policy. It should be
removed and recreated.

=back


Valid values are: C<"ACTIVE">, C<"UPDATE_REQUESTED">, C<"UPDATING">, C<"DELETE_REQUESTED">, C<"DELETING">, C<"DELETED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPolicies in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

