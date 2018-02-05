
package Paws::Glue::UpdateTable;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has SkipArchive => (is => 'ro', isa => 'Bool');
  has TableInput => (is => 'ro', isa => 'Paws::Glue::TableInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateTable - Arguments for method UpdateTable on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTable on the 
AWS Glue service. Use the attributes of this class
as arguments to method UpdateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTable.

As an example:

  $service_obj->UpdateTable(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the table resides. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database in which the table resides. For Hive
compatibility, this name is entirely lowercase.



=head2 SkipArchive => Bool

By default, C<UpdateTable> always creates an archived version of the
table before updating it. If C<skipArchive> is set to true, however,
C<UpdateTable> does not create the archived version.



=head2 B<REQUIRED> TableInput => L<Paws::Glue::TableInput>

An updated C<TableInput> object to define the metadata table in the
catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

