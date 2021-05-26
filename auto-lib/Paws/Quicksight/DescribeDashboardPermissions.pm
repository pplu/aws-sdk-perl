
package Paws::Quicksight::DescribeDashboardPermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDashboardPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeDashboardPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDashboardPermissions - Arguments for method DescribeDashboardPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDashboardPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeDashboardPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDashboardPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeDashboardPermissionsResponse =
      $quicksight->DescribeDashboardPermissions(
      AwsAccountId => 'MyAwsAccountId',
      DashboardId  => 'MyRestrictiveResourceId',

      );

    # Results:
    my $DashboardArn = $DescribeDashboardPermissionsResponse->DashboardArn;
    my $DashboardId  = $DescribeDashboardPermissionsResponse->DashboardId;
    my $Permissions  = $DescribeDashboardPermissionsResponse->Permissions;
    my $RequestId    = $DescribeDashboardPermissionsResponse->RequestId;
    my $Status       = $DescribeDashboardPermissionsResponse->Status;

   # Returns a L<Paws::Quicksight::DescribeDashboardPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeDashboardPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the dashboard that you're
describing permissions for.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard, also added to the IAM policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDashboardPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

