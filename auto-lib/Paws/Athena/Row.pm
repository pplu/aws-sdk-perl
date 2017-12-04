package Paws::Athena::Row;
  use Moose;
  has Data => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Datum]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::Row

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::Row object:

  $service_obj->Method(Att1 => { Data => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::Row object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

The rows that comprise a query result table.

=head1 ATTRIBUTES


=head2 Data => ArrayRef[L<Paws::Athena::Datum>]

  The data that populates a row in a query result table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

