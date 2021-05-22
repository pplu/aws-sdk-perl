
package Paws::LakeFormation::RevokePermissions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has PermissionsWithGrantOption => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Principal => (is => 'ro', isa => 'Paws::LakeFormation::DataLakePrincipal', required => 1);
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::RevokePermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::RevokePermissions - Arguments for method RevokePermissions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokePermissions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method RevokePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokePermissions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $RevokePermissionsResponse = $lakeformation->RevokePermissions(
      Permissions => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_TAG, ALTER_TAG, DELETE_TAG, DESCRIBE_TAG, ASSOCIATE_TAG
      ],
      Principal => {
        DataLakePrincipalIdentifier =>
          'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
      },
      Resource => {
        Catalog => {

        },                                # OPTIONAL
        DataLocation => {
          ResourceArn => 'MyResourceArnString',
          CatalogId   => 'MyCatalogIdString',     # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Database => {
          Name      => 'MyNameString',         # min: 1, max: 255
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        LFTag => {
          TagKey    => 'MyNameString',    # min: 1, max: 255
          TagValues => [
            'MyLFTagValue', ...           # max: 256
          ],                              # min: 1, max: 50
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        LFTagPolicy => {
          Expression => [
            {
              TagKey    => 'MyLFTagKey',    # min: 1, max: 128
              TagValues => [
                'MyLFTagValue', ...         # max: 256
              ],                            # min: 1, max: 50

            },
            ...
          ],                                # min: 1, max: 5
          ResourceType => 'DATABASE',             # values: DATABASE, TABLE
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Table => {
          DatabaseName  => 'MyNameString',         # min: 1, max: 255
          CatalogId     => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          Name          => 'MyNameString',         # min: 1, max: 255
          TableWildcard => {

          },                                       # OPTIONAL
        },    # OPTIONAL
        TableWithColumns => {
          DatabaseName => 'MyNameString',         # min: 1, max: 255
          Name         => 'MyNameString',         # min: 1, max: 255
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          ColumnNames  => [
            'MyNameString', ...                   # min: 1, max: 255
          ],                                      # OPTIONAL
          ColumnWildcard => {
            ExcludedColumnNames => [
              'MyNameString', ...                 # min: 1, max: 255
            ],                                    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      CatalogId                  => 'MyCatalogIdString',    # OPTIONAL
      PermissionsWithGrantOption => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_TAG, ALTER_TAG, DELETE_TAG, DESCRIBE_TAG, ASSOCIATE_TAG
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/RevokePermissions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> Permissions => ArrayRef[Str|Undef]

The permissions revoked to the principal on the resource. For
information about permissions, see Security and Access Control to
Metadata and Data
(https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).



=head2 PermissionsWithGrantOption => ArrayRef[Str|Undef]

Indicates a list of permissions for which to revoke the grant option
allowing the principal to pass permissions to other principals.



=head2 B<REQUIRED> Principal => L<Paws::LakeFormation::DataLakePrincipal>

The principal to be revoked permissions on the resource.



=head2 B<REQUIRED> Resource => L<Paws::LakeFormation::Resource>

The resource to which permissions are to be revoked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokePermissions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

