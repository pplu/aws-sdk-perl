
package Paws::Quicksight::UpdateThemePermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThemePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateThemePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateThemePermissions - Arguments for method UpdateThemePermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThemePermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateThemePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThemePermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateThemePermissionsResponse = $quicksight->UpdateThemePermissions(
      AwsAccountId     => 'MyAwsAccountId',
      ThemeId          => 'MyRestrictiveResourceId',
      GrantPermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      RevokePermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $Permissions = $UpdateThemePermissionsResponse->Permissions;
    my $RequestId   = $UpdateThemePermissionsResponse->RequestId;
    my $Status      = $UpdateThemePermissionsResponse->Status;
    my $ThemeArn    = $UpdateThemePermissionsResponse->ThemeArn;
    my $ThemeId     = $UpdateThemePermissionsResponse->ThemeId;

    # Returns a L<Paws::Quicksight::UpdateThemePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateThemePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be granted for the theme.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be revoked from the theme.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThemePermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

