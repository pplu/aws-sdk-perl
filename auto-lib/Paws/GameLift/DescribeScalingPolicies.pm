
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

Paws::GameLift::DescribeScalingPolicies - Arguments for method DescribeScalingPolicies on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPolicies on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method DescribeScalingPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPolicies.

As an example:

  $service_obj->DescribeScalingPolicies(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet. Specify the fleet to retrieve scaling
policies for.



=head2 Limit => Int

Maximum number of results to return. You can use this parameter with
I<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token indicating the start of the next sequential page of results. Use
the token that is returned with a previous call to this action. To
specify the start of the result set, do not specify a value.



=head2 StatusFilter => Str

Game session status to filter results on. A scaling policy is only in
force when in an Active state.

=over

=item * ACTIVE: The scaling policy is currently in force.

=item * UPDATEREQUESTED: A request to update the scaling policy has
been received.

=item * UPDATING: A change is being made to the scaling policy.

=item * DELETEREQUESTED: A request to delete the scaling policy has
been received.

=item * DELETING: The scaling policy is being deleted.

=item * DELETED: The scaling policy has been deleted.

=item * ERROR: An error occurred in creating the policy. It should be
removed and recreated.

=back


Valid values are: C<"ACTIVE">, C<"UPDATE_REQUESTED">, C<"UPDATING">, C<"DELETE_REQUESTED">, C<"DELETING">, C<"DELETED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPolicies in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

