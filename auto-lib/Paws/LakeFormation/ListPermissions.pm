
package Paws::LakeFormation::ListPermissions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Principal => (is => 'ro', isa => 'Paws::LakeFormation::DataLakePrincipal');
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource');
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListPermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListPermissions - Arguments for method ListPermissions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListPermissionsResponse = $lakeformation->ListPermissions(
      CatalogId  => 'MyCatalogIdString',    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyToken',              # OPTIONAL
      Principal  => {
        DataLakePrincipalIdentifier =>
          'MyDataLakePrincipalString',      # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
      Resource => {
        Catalog => {

        },    # OPTIONAL
        DataLocation => {
          ResourceArn => 'MyResourceArnString',
          CatalogId   => 'MyCatalogIdString',     # min: 1, max: 255
        },    # OPTIONAL
        Database => {
          Name      => 'MyNameString',         # min: 1, max: 255
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255
        },    # OPTIONAL
        LFTag => {
          TagKey    => 'MyNameString',    # min: 1, max: 255
          TagValues => [
            'MyLFTagValue', ...           # max: 256
          ],    # min: 1, max: 50
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255
        },    # OPTIONAL
        LFTagPolicy => {
          Expression => [
            {
              TagKey    => 'MyLFTagKey',    # min: 1, max: 128
              TagValues => [
                'MyLFTagValue', ...         # max: 256
              ],    # min: 1, max: 50

            },
            ...
          ],    # min: 1, max: 5
          ResourceType => 'DATABASE',             # values: DATABASE, TABLE
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255
        },    # OPTIONAL
        Table => {
          DatabaseName  => 'MyNameString',         # min: 1, max: 255
          CatalogId     => 'MyCatalogIdString',    # min: 1, max: 255
          Name          => 'MyNameString',         # min: 1, max: 255
          TableWildcard => {

          },                                       # OPTIONAL
        },    # OPTIONAL
        TableWithColumns => {
          DatabaseName => 'MyNameString',         # min: 1, max: 255
          Name         => 'MyNameString',         # min: 1, max: 255
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255
          ColumnNames  => [
            'MyNameString', ...                   # min: 1, max: 255
          ],    # OPTIONAL
          ColumnWildcard => {
            ExcludedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ResourceType => 'CATALOG',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPermissionsResponse->NextToken;
    my $PrincipalResourcePermissions =
      $ListPermissionsResponse->PrincipalResourcePermissions;

    # Returns a L<Paws::LakeFormation::ListPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListPermissions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.



=head2 Principal => L<Paws::LakeFormation::DataLakePrincipal>

Specifies a principal to filter the permissions returned.



=head2 Resource => L<Paws::LakeFormation::Resource>

A resource where you will get a list of the principal permissions.

This operation does not support getting privileges on a table with
columns. Instead, call this operation on the table, and the operation
returns the table and the table w columns.



=head2 ResourceType => Str

Specifies a resource type to filter the permissions returned.

Valid values are: C<"CATALOG">, C<"DATABASE">, C<"TABLE">, C<"DATA_LOCATION">, C<"LF_TAG">, C<"LF_TAG_POLICY">, C<"LF_TAG_POLICY_DATABASE">, C<"LF_TAG_POLICY_TABLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

