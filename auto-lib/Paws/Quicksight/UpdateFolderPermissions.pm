
package Paws::Quicksight::UpdateFolderPermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFolderPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateFolderPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateFolderPermissions - Arguments for method UpdateFolderPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFolderPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateFolderPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFolderPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateFolderPermissionsResponse = $quicksight->UpdateFolderPermissions(
      AwsAccountId     => 'MyAwsAccountId',
      FolderId         => 'MyRestrictiveResourceId',
      GrantPermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      RevokePermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn         = $UpdateFolderPermissionsResponse->Arn;
    my $FolderId    = $UpdateFolderPermissionsResponse->FolderId;
    my $Permissions = $UpdateFolderPermissionsResponse->Permissions;
    my $RequestId   = $UpdateFolderPermissionsResponse->RequestId;
    my $Status      = $UpdateFolderPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateFolderPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateFolderPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> FolderId => Str

The folder ID.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The permissions that you want to grant on a resource.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The permissions that you want to revoke from a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFolderPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

