package Paws::Quicksight::DataSet;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ColumnGroups => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnGroup]');
  has ConsumedSpiceCapacityInBytes => (is => 'ro', isa => 'Int');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has ImportMode => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has LogicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::LogicalTableMap');
  has Name => (is => 'ro', isa => 'Str');
  has OutputColumns => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::OutputColumn]');
  has PhysicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::PhysicalTableMap');
  has RowLevelPermissionDataSet => (is => 'ro', isa => 'Paws::Quicksight::RowLevelPermissionDataSet');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DataSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DataSet object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RowLevelPermissionDataSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DataSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Dataset.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource name (ARN) of the resource.


=head2 ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]

  Groupings of columns that work together in certain QuickSight features.
Currently, only geospatial hierarchy is supported.


=head2 ConsumedSpiceCapacityInBytes => Int

  The amount of SPICE capacity used by this dataset. This is 0 if the
dataset isn't imported into SPICE.


=head2 CreatedTime => Str

  The time this was created.


=head2 DataSetId => Str

  The ID of the dataset.


=head2 ImportMode => Str

  Indicates whether or not you want to import the data into SPICE.


=head2 LastUpdatedTime => Str

  The last time this was updated.


=head2 LogicalTableMap => L<Paws::Quicksight::LogicalTableMap>

  Configures the combination and transformation of the data from the
physical tables.


=head2 Name => Str

  A display name for the dataset.


=head2 OutputColumns => ArrayRef[L<Paws::Quicksight::OutputColumn>]

  The list of columns after all transforms. These columns are available
in templates, analyses, and dashboards.


=head2 PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

  Declares the physical tables that are available in the underlying data
sources.


=head2 RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>

  Row-level security configuration on the dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

