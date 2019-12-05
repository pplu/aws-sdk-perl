
package Paws::Quicksight::DeleteDashboard;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteDashboard - Arguments for method DeleteDashboard on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDashboard on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDashboard.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteDashboardResponse = $quicksight->DeleteDashboard(
      AwsAccountId  => 'MyAwsAccountId',
      DashboardId   => 'MyRestrictiveResourceId',
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $Arn         = $DeleteDashboardResponse->Arn;
    my $DashboardId = $DeleteDashboardResponse->DashboardId;
    my $RequestId   = $DeleteDashboardResponse->RequestId;
    my $Status      = $DeleteDashboardResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the dashboard you are deleting.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard.



=head2 VersionNumber => Int

The version number of the dashboard. If version number property is
provided, only the specified version of the dashboard is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDashboard in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

