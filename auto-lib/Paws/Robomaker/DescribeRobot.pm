
package Paws::Robomaker::DescribeRobot;
  use Moose;
  has Robot => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'robot', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRobot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeRobot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeRobotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeRobot - Arguments for method DescribeRobot on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRobot on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeRobot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRobot.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeRobotResponse = $robomaker->DescribeRobot(
      Robot => 'MyArn',

    );

    # Results:
    my $Architecture       = $DescribeRobotResponse->Architecture;
    my $Arn                = $DescribeRobotResponse->Arn;
    my $CreatedAt          = $DescribeRobotResponse->CreatedAt;
    my $FleetArn           = $DescribeRobotResponse->FleetArn;
    my $GreengrassGroupId  = $DescribeRobotResponse->GreengrassGroupId;
    my $LastDeploymentJob  = $DescribeRobotResponse->LastDeploymentJob;
    my $LastDeploymentTime = $DescribeRobotResponse->LastDeploymentTime;
    my $Name               = $DescribeRobotResponse->Name;
    my $Status             = $DescribeRobotResponse->Status;
    my $Tags               = $DescribeRobotResponse->Tags;

    # Returns a L<Paws::Robomaker::DescribeRobotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeRobot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Robot => Str

The Amazon Resource Name (ARN) of the robot to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRobot in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

