package Paws::Glue::Order;
  use Moose;
  has Column => (is => 'ro', isa => 'Str', required => 1);
  has SortOrder => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Order

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Order object:

  $service_obj->Method(Att1 => { Column => $value, ..., SortOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Order object:

  $result = $service_obj->Method(...);
  $result->Att1->Column

=head1 DESCRIPTION

Specifies the sort order of a sorted column.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Column => Str

  The name of the column.


=head2 B<REQUIRED> SortOrder => Int

  Indicates that the column is sorted in ascending order (C<== 1>), or in
descending order (C<==0>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

