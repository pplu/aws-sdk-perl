package Paws::Discovery::OrderByElement;
  use Moose;
  has FieldName => (is => 'ro', isa => 'Str', request_name => 'fieldName', traits => ['NameInRequest'], required => 1);
  has SortOrder => (is => 'ro', isa => 'Str', request_name => 'sortOrder', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::OrderByElement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::OrderByElement object:

  $service_obj->Method(Att1 => { FieldName => $value, ..., SortOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::OrderByElement object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldName

=head1 DESCRIPTION

A field and direction for ordered output.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldName => Str

  The field on which to order.


=head2 SortOrder => Str

  Ordering direction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

