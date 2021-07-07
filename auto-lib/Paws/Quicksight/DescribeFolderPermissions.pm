
package Paws::Quicksight::DescribeFolderPermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFolderPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeFolderPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeFolderPermissions - Arguments for method DescribeFolderPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFolderPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeFolderPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFolderPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeFolderPermissionsResponse =
      $quicksight->DescribeFolderPermissions(
      AwsAccountId => 'MyAwsAccountId',
      FolderId     => 'MyRestrictiveResourceId',

      );

    # Results:
    my $Arn         = $DescribeFolderPermissionsResponse->Arn;
    my $FolderId    = $DescribeFolderPermissionsResponse->FolderId;
    my $Permissions = $DescribeFolderPermissionsResponse->Permissions;
    my $RequestId   = $DescribeFolderPermissionsResponse->RequestId;
    my $Status      = $DescribeFolderPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeFolderPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeFolderPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID.



=head2 B<REQUIRED> FolderId => Str

The folder ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFolderPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

