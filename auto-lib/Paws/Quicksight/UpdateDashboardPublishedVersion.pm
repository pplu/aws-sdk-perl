
package Paws::Quicksight::UpdateDashboardPublishedVersion;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'VersionNumber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDashboardPublishedVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDashboardPublishedVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDashboardPublishedVersion - Arguments for method UpdateDashboardPublishedVersion on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDashboardPublishedVersion on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDashboardPublishedVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDashboardPublishedVersion.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDashboardPublishedVersionResponse =
      $quicksight->UpdateDashboardPublishedVersion(
      AwsAccountId  => 'MyAwsAccountId',
      DashboardId   => 'MyRestrictiveResourceId',
      VersionNumber => 1,

      );

    # Results:
    my $DashboardArn = $UpdateDashboardPublishedVersionResponse->DashboardArn;
    my $DashboardId  = $UpdateDashboardPublishedVersionResponse->DashboardId;
    my $RequestId    = $UpdateDashboardPublishedVersionResponse->RequestId;
    my $Status       = $UpdateDashboardPublishedVersionResponse->Status;

# Returns a L<Paws::Quicksight::UpdateDashboardPublishedVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDashboardPublishedVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the dashboard you are updating.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard.



=head2 B<REQUIRED> VersionNumber => Int

The version number of the dashboard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDashboardPublishedVersion in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

