
package Paws::Robomaker::CreateRobotApplication;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotSoftwareSuite Robomaker_TagMap Robomaker_SourceConfig/;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite, required => 1, predicate => 1);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_SourceConfig], required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Robomaker_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateRobotApplication');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createRobotApplication');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::CreateRobotApplicationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'RobotSoftwareSuite' => {
                                         'type' => 'Robomaker_RobotSoftwareSuite',
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite'
                                       },
               'Sources' => {
                              'type' => 'ArrayRef[Robomaker_SourceConfig]',
                              'class' => 'Paws::Robomaker::SourceConfig'
                            },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         }
             },
  'IsRequired' => {
                    'Sources' => 1,
                    'RobotSoftwareSuite' => 1,
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Sources' => 'sources',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobotApplication - Arguments for method CreateRobotApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRobotApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateRobotApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRobotApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateRobotApplicationResponse = $robomaker->CreateRobotApplication(
      Name               => 'MyName',
      RobotSoftwareSuite => {
        Name    => 'ROS',        # values: ROS, ROS2; OPTIONAL
        Version => 'Kinetic',    # values: Kinetic, Melodic, Dashing; OPTIONAL
      },
      Sources => [
        {
          Architecture => 'X86_64',     # values: X86_64, ARM64, ARMHF; OPTIONAL
          S3Bucket     => 'MyS3Bucket', # min: 3, max: 63; OPTIONAL
          S3Key        => 'MyS3Key',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',     # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn           = $CreateRobotApplicationResponse->Arn;
    my $LastUpdatedAt = $CreateRobotApplicationResponse->LastUpdatedAt;
    my $Name          = $CreateRobotApplicationResponse->Name;
    my $RevisionId    = $CreateRobotApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $CreateRobotApplicationResponse->RobotSoftwareSuite;
    my $Sources = $CreateRobotApplicationResponse->Sources;
    my $Tags    = $CreateRobotApplicationResponse->Tags;
    my $Version = $CreateRobotApplicationResponse->Version;

    # Returns a L<Paws::Robomaker::CreateRobotApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateRobotApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the robot application.



=head2 B<REQUIRED> RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

The robot software suite used by the robot application.



=head2 B<REQUIRED> Sources => ArrayRef[Robomaker_SourceConfig]

The sources of the robot application.



=head2 Tags => Robomaker_TagMap

A map that contains tag keys and tag values that are attached to the
robot application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRobotApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

