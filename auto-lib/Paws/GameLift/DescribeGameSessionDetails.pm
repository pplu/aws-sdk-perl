
package Paws::GameLift::DescribeGameSessionDetails;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has Location => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGameSessionDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeGameSessionDetailsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionDetails - Arguments for method DescribeGameSessionDetails on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGameSessionDetails on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeGameSessionDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGameSessionDetails.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeGameSessionDetailsOutput =
      $gamelift->DescribeGameSessionDetails(
      AliasId       => 'MyAliasIdOrArn',           # OPTIONAL
      FleetId       => 'MyFleetIdOrArn',           # OPTIONAL
      GameSessionId => 'MyArnStringModel',         # OPTIONAL
      Limit         => 1,                          # OPTIONAL
      Location      => 'MyLocationStringModel',    # OPTIONAL
      NextToken     => 'MyNonZeroAndMaxString',    # OPTIONAL
      StatusFilter  => 'MyNonZeroAndMaxString',    # OPTIONAL
      );

    # Results:
    my $GameSessionDetails =
      $DescribeGameSessionDetailsOutput->GameSessionDetails;
    my $NextToken = $DescribeGameSessionDetailsOutput->NextToken;

    # Returns a L<Paws::GameLift::DescribeGameSessionDetailsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeGameSessionDetails>

=head1 ATTRIBUTES


=head2 AliasId => Str

A unique identifier for the alias associated with the fleet to retrieve
all game sessions for. You can use either the alias ID or ARN value.



=head2 FleetId => Str

A unique identifier for the fleet to retrieve all game sessions active
on the fleet. You can use either the fleet ID or ARN value.



=head2 GameSessionId => Str

A unique identifier for the game session to retrieve.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 Location => Str

A fleet location to get game sessions for. You can specify a fleet's
home Region or a remote location. Use the AWS Region code format, such
as C<us-west-2>.



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.



=head2 StatusFilter => Str

Game session status to filter results on. Possible game session
statuses include C<ACTIVE>, C<TERMINATED>, C<ACTIVATING> and
C<TERMINATING> (the last two are transitory).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGameSessionDetails in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

