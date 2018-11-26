
package Paws::Robomaker::CreateSimulationApplicationVersion;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has CurrentRevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentRevisionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSimulationApplicationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createSimulationApplicationVersion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateSimulationApplicationVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationApplicationVersion - Arguments for method CreateSimulationApplicationVersion on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSimulationApplicationVersion on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateSimulationApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSimulationApplicationVersion.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateSimulationApplicationVersionResponse =
      $robomaker->CreateSimulationApplicationVersion(
      Application       => 'MyArn',
      CurrentRevisionId => 'MyRevisionId',    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateSimulationApplicationVersionResponse->Arn;
    my $LastUpdatedAt =
      $CreateSimulationApplicationVersionResponse->LastUpdatedAt;
    my $Name = $CreateSimulationApplicationVersionResponse->Name;
    my $RenderingEngine =
      $CreateSimulationApplicationVersionResponse->RenderingEngine;
    my $RevisionId = $CreateSimulationApplicationVersionResponse->RevisionId;
    my $RobotSoftwareSuite =
      $CreateSimulationApplicationVersionResponse->RobotSoftwareSuite;
    my $SimulationSoftwareSuite =
      $CreateSimulationApplicationVersionResponse->SimulationSoftwareSuite;
    my $Sources = $CreateSimulationApplicationVersionResponse->Sources;
    my $Version = $CreateSimulationApplicationVersionResponse->Version;

# Returns a L<Paws::Robomaker::CreateSimulationApplicationVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateSimulationApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the simulation application.



=head2 CurrentRevisionId => Str

The current revision id for the simulation application. If you provide
a value and it matches the latest revision ID, a new version will be
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSimulationApplicationVersion in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

