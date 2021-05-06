
package Paws::Robomaker::RegisterRobot;
  use Moose;
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet', required => 1);
  has Robot => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'robot', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterRobot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/registerRobot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::RegisterRobotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::RegisterRobot - Arguments for method RegisterRobot on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterRobot on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method RegisterRobot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterRobot.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $RegisterRobotResponse = $robomaker->RegisterRobot(
      Fleet => 'MyArn',
      Robot => 'MyArn',

    );

    # Results:
    my $Fleet = $RegisterRobotResponse->Fleet;
    my $Robot = $RegisterRobotResponse->Robot;

    # Returns a L<Paws::Robomaker::RegisterRobotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/RegisterRobot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fleet => Str

The Amazon Resource Name (ARN) of the fleet.



=head2 B<REQUIRED> Robot => Str

The Amazon Resource Name (ARN) of the robot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterRobot in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

