
package Paws::Robomaker::CreateRobot;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture', required => 1);
  has GreengrassGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'greengrassGroupId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRobot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createRobot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateRobotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobot - Arguments for method CreateRobot on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRobot on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateRobot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRobot.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateRobotResponse = $robomaker->CreateRobot(
      Architecture      => 'X86_64',
      GreengrassGroupId => 'MyId',
      Name              => 'MyName',
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Architecture      = $CreateRobotResponse->Architecture;
    my $Arn               = $CreateRobotResponse->Arn;
    my $CreatedAt         = $CreateRobotResponse->CreatedAt;
    my $GreengrassGroupId = $CreateRobotResponse->GreengrassGroupId;
    my $Name              = $CreateRobotResponse->Name;
    my $Tags              = $CreateRobotResponse->Tags;

    # Returns a L<Paws::Robomaker::CreateRobotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateRobot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Architecture => Str

The target architecture of the robot.

Valid values are: C<"X86_64">, C<"ARM64">, C<"ARMHF">

=head2 B<REQUIRED> GreengrassGroupId => Str

The Greengrass group id.



=head2 B<REQUIRED> Name => Str

The name for the robot.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
robot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRobot in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

