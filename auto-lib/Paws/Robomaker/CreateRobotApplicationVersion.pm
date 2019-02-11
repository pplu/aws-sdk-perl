
package Paws::Robomaker::CreateRobotApplicationVersion;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has CurrentRevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentRevisionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRobotApplicationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createRobotApplicationVersion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateRobotApplicationVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobotApplicationVersion - Arguments for method CreateRobotApplicationVersion on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRobotApplicationVersion on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateRobotApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRobotApplicationVersion.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateRobotApplicationVersionResponse =
      $robomaker->CreateRobotApplicationVersion(
      Application       => 'MyArn',
      CurrentRevisionId => 'MyRevisionId',    # OPTIONAL
      );

    # Results:
    my $Arn           = $CreateRobotApplicationVersionResponse->Arn;
    my $LastUpdatedAt = $CreateRobotApplicationVersionResponse->LastUpdatedAt;
    my $Name          = $CreateRobotApplicationVersionResponse->Name;
    my $RevisionId    = $CreateRobotApplicationVersionResponse->RevisionId;
    my $RobotSoftwareSuite =
      $CreateRobotApplicationVersionResponse->RobotSoftwareSuite;
    my $Sources = $CreateRobotApplicationVersionResponse->Sources;
    my $Version = $CreateRobotApplicationVersionResponse->Version;

   # Returns a L<Paws::Robomaker::CreateRobotApplicationVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateRobotApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the robot application.



=head2 CurrentRevisionId => Str

The current revision id for the robot application. If you provide a
value and it matches the latest revision ID, a new version will be
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRobotApplicationVersion in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

