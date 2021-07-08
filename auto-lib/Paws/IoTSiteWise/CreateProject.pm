
package Paws::IoTSiteWise::CreateProject;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalId', required => 1);
  has ProjectDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectDescription');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateProject - Arguments for method CreateProject on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateProjectResponse = $iotsitewise->CreateProject(
      PortalId           => 'MyID',
      ProjectName        => 'MyName',
      ClientToken        => 'MyClientToken',    # OPTIONAL
      ProjectDescription => 'MyDescription',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ProjectArn = $CreateProjectResponse->ProjectArn;
    my $ProjectId  = $CreateProjectResponse->ProjectId;

    # Returns a L<Paws::IoTSiteWise::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateProject>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PortalId => Str

The ID of the portal in which to create the project.



=head2 ProjectDescription => Str

A description for the project.



=head2 B<REQUIRED> ProjectName => Str

A friendly name for the project.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the project. For
more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

