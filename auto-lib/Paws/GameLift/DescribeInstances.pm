
package Paws::GameLift::DescribeInstances;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeInstances - Arguments for method DescribeInstances on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstances on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstances.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeInstancesOutput = $gamelift->DescribeInstances(
      FleetId    => 'MyFleetId',
      InstanceId => 'MyInstanceId',             # OPTIONAL
      Limit      => 1,                          # OPTIONAL
      NextToken  => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Instances = $DescribeInstancesOutput->Instances;
    my $NextToken = $DescribeInstancesOutput->NextToken;

    # Returns a L<Paws::GameLift::DescribeInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to retrieve instance information for.



=head2 InstanceId => Str

Unique identifier for an instance to retrieve. Specify an instance ID
or leave blank to retrieve all instances in the fleet.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstances in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

