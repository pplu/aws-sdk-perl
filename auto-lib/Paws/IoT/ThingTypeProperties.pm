package Paws::IoT::ThingTypeProperties;
  use Moose;
  has SearchableAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'searchableAttributes', traits => ['NameInRequest']);
  has ThingTypeDescription => (is => 'ro', isa => 'Str', request_name => 'thingTypeDescription', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingTypeProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingTypeProperties object:

  $service_obj->Method(Att1 => { SearchableAttributes => $value, ..., ThingTypeDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingTypeProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->SearchableAttributes

=head1 DESCRIPTION

The ThingTypeProperties contains information about the thing type
including: a thing type description, and a list of searchable thing
attribute names.

=head1 ATTRIBUTES


=head2 SearchableAttributes => ArrayRef[Str|Undef]

  A list of searchable thing attribute names.


=head2 ThingTypeDescription => Str

  The description of the thing type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

