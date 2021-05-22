
package Paws::GameLift::DescribeGameServerInstances;
  use Moose;
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGameServerInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeGameServerInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameServerInstances - Arguments for method DescribeGameServerInstances on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGameServerInstances on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeGameServerInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGameServerInstances.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeGameServerInstancesOutput =
      $gamelift->DescribeGameServerInstances(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      InstanceIds         => [
        'MyGameServerInstanceId', ...    # min: 19, max: 19
      ],                                 # OPTIONAL
      Limit     => 1,                          # OPTIONAL
      NextToken => 'MyNonZeroAndMaxString',    # OPTIONAL
      );

    # Results:
    my $GameServerInstances =
      $DescribeGameServerInstancesOutput->GameServerInstances;
    my $NextToken = $DescribeGameServerInstancesOutput->NextToken;

    # Returns a L<Paws::GameLift::DescribeGameServerInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeGameServerInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group. Use either the
GameServerGroup name or ARN value.



=head2 InstanceIds => ArrayRef[Str|Undef]

The EC2 instance IDs that you want to retrieve status on. EC2 instance
IDs use a 17-character format, for example: C<i-1234567890abcdef0>. To
retrieve all instances in the game server group, leave this parameter
empty.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGameServerInstances in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

