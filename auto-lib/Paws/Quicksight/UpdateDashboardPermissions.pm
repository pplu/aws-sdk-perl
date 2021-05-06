
package Paws::Quicksight::UpdateDashboardPermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDashboardPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDashboardPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDashboardPermissions - Arguments for method UpdateDashboardPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDashboardPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDashboardPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDashboardPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDashboardPermissionsResponse =
      $quicksight->UpdateDashboardPermissions(
      AwsAccountId     => 'MyAwsAccountId',
      DashboardId      => 'MyRestrictiveResourceId',
      GrantPermissions => [
        {
          Actions => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',        # min: 1, max: 256

        },
        ...
      ],                                     # OPTIONAL
      RevokePermissions => [
        {
          Actions => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',        # min: 1, max: 256

        },
        ...
      ],                                     # OPTIONAL
      );

    # Results:
    my $DashboardArn = $UpdateDashboardPermissionsResponse->DashboardArn;
    my $DashboardId  = $UpdateDashboardPermissionsResponse->DashboardId;
    my $Permissions  = $UpdateDashboardPermissionsResponse->Permissions;
    my $RequestId    = $UpdateDashboardPermissionsResponse->RequestId;
    my $Status       = $UpdateDashboardPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateDashboardPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDashboardPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the dashboard whose permissions
you're updating.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The permissions that you want to grant on this resource.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The permissions that you want to revoke from this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDashboardPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

