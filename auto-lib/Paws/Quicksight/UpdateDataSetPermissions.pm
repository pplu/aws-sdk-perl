
package Paws::Quicksight::UpdateDataSetPermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSetPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDataSetPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSetPermissions - Arguments for method UpdateDataSetPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSetPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDataSetPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSetPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDataSetPermissionsResponse =
      $quicksight->UpdateDataSetPermissions(
      AwsAccountId     => 'MyAwsAccountId',
      DataSetId        => 'MyResourceId',
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
    my $DataSetArn = $UpdateDataSetPermissionsResponse->DataSetArn;
    my $DataSetId  = $UpdateDataSetPermissionsResponse->DataSetId;
    my $RequestId  = $UpdateDataSetPermissionsResponse->RequestId;
    my $Status     = $UpdateDataSetPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateDataSetPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDataSetPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> DataSetId => Str

The ID for the dataset whose permissions you want to update. This ID is
unique per AWS Region for each AWS account.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The resource permissions that you want to grant to the dataset.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

The resource permissions that you want to revoke from the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSetPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

