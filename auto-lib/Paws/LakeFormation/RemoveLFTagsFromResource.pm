
package Paws::LakeFormation::RemoveLFTagsFromResource;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has LFTags => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagPair]', required => 1);
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveLFTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::RemoveLFTagsFromResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::RemoveLFTagsFromResource - Arguments for method RemoveLFTagsFromResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveLFTagsFromResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method RemoveLFTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveLFTagsFromResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $RemoveLFTagsFromResourceResponse =
      $lakeformation->RemoveLFTagsFromResource(
      LFTags => [
        {
          TagKey    => 'MyLFTagKey',    # min: 1, max: 128
          TagValues => [
            'MyLFTagValue', ...         # max: 256
          ],    # min: 1, max: 50
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],
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
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

    # Results:
    my $Failures = $RemoveLFTagsFromResourceResponse->Failures;

    # Returns a L<Paws::LakeFormation::RemoveLFTagsFromResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/RemoveLFTagsFromResource>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

The tags to be removed from the resource.



=head2 B<REQUIRED> Resource => L<Paws::LakeFormation::Resource>

The resource where you want to remove a tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveLFTagsFromResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

