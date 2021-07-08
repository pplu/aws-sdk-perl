
package Paws::IoTSiteWise::DeleteDashboard;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dashboardId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dashboards/{dashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DeleteDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteDashboard - Arguments for method DeleteDashboard on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDashboard on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DeleteDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDashboard.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DeleteDashboardResponse = $iotsitewise->DeleteDashboard(
      DashboardId => 'MyID',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DeleteDashboard>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> DashboardId => Str

The ID of the dashboard to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDashboard in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

