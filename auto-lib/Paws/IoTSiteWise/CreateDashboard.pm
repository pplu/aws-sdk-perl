
package Paws::IoTSiteWise::CreateDashboard;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DashboardDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDefinition', required => 1);
  has DashboardDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDescription');
  has DashboardName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardName', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dashboards');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateDashboard - Arguments for method CreateDashboard on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDashboard on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDashboard.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateDashboardResponse = $iotsitewise->CreateDashboard(
      DashboardDefinition  => 'MyDashboardDefinition',
      DashboardName        => 'MyName',
      ProjectId            => 'MyID',
      ClientToken          => 'MyClientToken',           # OPTIONAL
      DashboardDescription => 'MyDescription',           # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DashboardArn = $CreateDashboardResponse->DashboardArn;
    my $DashboardId  = $CreateDashboardResponse->DashboardId;

    # Returns a L<Paws::IoTSiteWise::CreateDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateDashboard>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> DashboardDefinition => Str

The dashboard definition specified in a JSON literal. For detailed
information, see Creating dashboards (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 DashboardDescription => Str

A description for the dashboard.



=head2 B<REQUIRED> DashboardName => Str

A friendly name for the dashboard.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project in which to create the dashboard.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the dashboard. For
more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDashboard in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

