package Paws::Quicksight::CustomSql;
  use Moose;
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::InputColumn]');
  has DataSourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SqlQuery => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CustomSql

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::CustomSql object:

  $service_obj->Method(Att1 => { Columns => $value, ..., SqlQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::CustomSql object:

  $result = $service_obj->Method(...);
  $result->Att1->Columns

=head1 DESCRIPTION

A physical table type built from the results of the custom SQL query.

=head1 ATTRIBUTES


=head2 Columns => ArrayRef[L<Paws::Quicksight::InputColumn>]

  The column schema from the SQL query result set.


=head2 B<REQUIRED> DataSourceArn => Str

  The Amazon Resource Name (ARN) of the data source.


=head2 B<REQUIRED> Name => Str

  A display name for the SQL query result.


=head2 B<REQUIRED> SqlQuery => Str

  The SQL query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

