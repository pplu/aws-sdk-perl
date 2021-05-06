
package Paws::LakeFormation::BatchRevokePermissions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::BatchPermissionsRequestEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchRevokePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::BatchRevokePermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::BatchRevokePermissions - Arguments for method BatchRevokePermissions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchRevokePermissions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method BatchRevokePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchRevokePermissions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $BatchRevokePermissionsResponse = $lakeformation->BatchRevokePermissions(
      Entries => [
        {
          Id          => 'MyIdentifier',    # min: 1, max: 255
          Permissions => [
            'ALL',
            ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
          ],    # OPTIONAL
          PermissionsWithGrantOption => [
            'ALL',
            ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
          ],    # OPTIONAL
          Principal => {
            DataLakePrincipalIdentifier =>
              'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          Resource => {
            Catalog => {

            },    # OPTIONAL
            DataLocation => {
              ResourceArn => 'MyResourceArnString',

            },    # OPTIONAL
            Database => {
              Name => 'MyNameString',    # min: 1, max: 255

            },    # OPTIONAL
            Table => {
              DatabaseName => 'MyNameString',    # min: 1, max: 255
              Name         => 'MyNameString',    # min: 1, max: 255

            },    # OPTIONAL
            TableWithColumns => {
              ColumnNames => [
                'MyNameString', ...    # min: 1, max: 255
              ],                       # OPTIONAL
              ColumnWildcard => {
                ExcludedColumnNames => [
                  'MyNameString', ...    # min: 1, max: 255
                ],                       # OPTIONAL
              },    # OPTIONAL
              DatabaseName => 'MyNameString',    # min: 1, max: 255
              Name         => 'MyNameString',    # min: 1, max: 255
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Failures = $BatchRevokePermissionsResponse->Failures;

    # Returns a L<Paws::LakeFormation::BatchRevokePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/BatchRevokePermissions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

A list of up to 20 entries for resource permissions to be revoked by
batch operation to the principal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchRevokePermissions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

