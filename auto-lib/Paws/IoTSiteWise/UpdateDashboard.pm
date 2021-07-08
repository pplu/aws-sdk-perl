
package Paws::IoTSiteWise::UpdateDashboard;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DashboardDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDefinition', required => 1);
  has DashboardDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDescription');
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dashboardId', required => 1);
  has DashboardName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dashboards/{dashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateDashboard - Arguments for method UpdateDashboard on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDashboard on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDashboard.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateDashboardResponse = $iotsitewise->UpdateDashboard(
      DashboardDefinition  => 'MyDashboardDefinition',
      DashboardId          => 'MyID',
      DashboardName        => 'MyName',
      ClientToken          => 'MyClientToken',           # OPTIONAL
      DashboardDescription => 'MyDescription',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateDashboard>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> DashboardDefinition => Str

The new dashboard definition, as specified in a JSON literal. For
detailed information, see Creating dashboards (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 DashboardDescription => Str

A new description for the dashboard.



=head2 B<REQUIRED> DashboardId => Str

The ID of the dashboard to update.



=head2 B<REQUIRED> DashboardName => Str

A new friendly name for the dashboard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDashboard in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

