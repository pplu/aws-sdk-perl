
package Paws::Robomaker::UpdateRobotApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has CurrentRevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentRevisionId');
  has RobotSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::RobotSoftwareSuite', traits => ['NameInRequest'], request_name => 'robotSoftwareSuite', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SourceConfig]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRobotApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateRobotApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::UpdateRobotApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::UpdateRobotApplication - Arguments for method UpdateRobotApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRobotApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method UpdateRobotApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRobotApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $UpdateRobotApplicationResponse = $robomaker->UpdateRobotApplication(
      Application        => 'MyArn',
      RobotSoftwareSuite => {
        Name    => 'ROS',        # values: ROS; OPTIONAL
        Version => 'Kinetic',    # values: Kinetic; OPTIONAL
      },
      Sources => [
        {
          Architecture => 'X86_64',     # values: X86_64, ARM64, ARMHF; OPTIONAL
          S3Bucket     => 'MyS3Bucket', # min: 3, max: 63; OPTIONAL
          S3Key        => 'MyS3Key',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      CurrentRevisionId => 'MyRevisionId',    # OPTIONAL
    );

    # Results:
    my $Arn           = $UpdateRobotApplicationResponse->Arn;
    my $LastUpdatedAt = $UpdateRobotApplicationResponse->LastUpdatedAt;
    my $Name          = $UpdateRobotApplicationResponse->Name;
    my $RevisionId    = $UpdateRobotApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $UpdateRobotApplicationResponse->RobotSoftwareSuite;
    my $Sources = $UpdateRobotApplicationResponse->Sources;
    my $Version = $UpdateRobotApplicationResponse->Version;

    # Returns a L<Paws::Robomaker::UpdateRobotApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/UpdateRobotApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the robot application.



=head2 CurrentRevisionId => Str

The revision id for the robot application.



=head2 B<REQUIRED> RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

The robot software suite used by the robot application.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

The sources of the robot application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRobotApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

