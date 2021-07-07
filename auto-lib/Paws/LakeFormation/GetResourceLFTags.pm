
package Paws::LakeFormation::GetResourceLFTags;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource', required => 1);
  has ShowAssignedLFTags => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceLFTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetResourceLFTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetResourceLFTags - Arguments for method GetResourceLFTags on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceLFTags on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetResourceLFTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceLFTags.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetResourceLFTagsResponse = $lakeformation->GetResourceLFTags(
      Resource => {
        Catalog => {

        },    # OPTIONAL
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
          ],    # min: 1, max: 50
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
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
          ],    # OPTIONAL
          ColumnWildcard => {
            ExcludedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      CatalogId          => 'MyCatalogIdString',    # OPTIONAL
      ShowAssignedLFTags => 1,                      # OPTIONAL
    );

    # Results:
    my $LFTagOnDatabase = $GetResourceLFTagsResponse->LFTagOnDatabase;
    my $LFTagsOnColumns = $GetResourceLFTagsResponse->LFTagsOnColumns;
    my $LFTagsOnTable   = $GetResourceLFTagsResponse->LFTagsOnTable;

    # Returns a L<Paws::LakeFormation::GetResourceLFTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetResourceLFTags>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> Resource => L<Paws::LakeFormation::Resource>

The resource for which you want to return tags.



=head2 ShowAssignedLFTags => Bool

Indicates whether to show the assigned tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceLFTags in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

