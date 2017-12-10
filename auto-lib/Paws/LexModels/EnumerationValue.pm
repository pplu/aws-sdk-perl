package Paws::LexModels::EnumerationValue;
  use Moose;
  has Synonyms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'synonyms', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::EnumerationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::EnumerationValue object:

  $service_obj->Method(Att1 => { Synonyms => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::EnumerationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Synonyms

=head1 DESCRIPTION

Each slot type can have a set of values. Each enumeration value
represents a value the slot type can take.

For example, a pizza ordering bot could have a slot type that specifies
the type of crust that the pizza should have. The slot type could
include the values

=over

=item *

thick

=item *

thin

=item *

stuffed

=back


=head1 ATTRIBUTES


=head2 Synonyms => ArrayRef[Str|Undef]

  Additional values related to the slot type value.


=head2 B<REQUIRED> Value => Str

  The value of the slot type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

