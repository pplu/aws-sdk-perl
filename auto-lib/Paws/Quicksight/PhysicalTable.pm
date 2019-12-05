package Paws::Quicksight::PhysicalTable;
  use Moose;
  has CustomSql => (is => 'ro', isa => 'Paws::Quicksight::CustomSql');
  has RelationalTable => (is => 'ro', isa => 'Paws::Quicksight::RelationalTable');
  has S3Source => (is => 'ro', isa => 'Paws::Quicksight::S3Source');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::PhysicalTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::PhysicalTable object:

  $service_obj->Method(Att1 => { CustomSql => $value, ..., S3Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::PhysicalTable object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomSql

=head1 DESCRIPTION

A view of a data source. Contains information on the shape of the data
in the underlying source. This is a variant type structure. No more
than one of the attributes can be non-null for this structure to be
valid.

=head1 ATTRIBUTES


=head2 CustomSql => L<Paws::Quicksight::CustomSql>

  A physical table type built from the results of the custom SQL query.


=head2 RelationalTable => L<Paws::Quicksight::RelationalTable>

  A physical table type for relational data sources.


=head2 S3Source => L<Paws::Quicksight::S3Source>

  A physical table type for as S3 data source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

