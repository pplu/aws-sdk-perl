package Paws::DocDB::EventCategoriesMap;
  use Moose;
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'EventCategory', traits => ['NameInRequest']);
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::EventCategoriesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::EventCategoriesMap object:

  $service_obj->Method(Att1 => { EventCategories => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::EventCategoriesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCategories

=head1 DESCRIPTION

An event source type, accompanied by one or more event category names.

=head1 ATTRIBUTES


=head2 EventCategories => ArrayRef[Str|Undef]

  The event categories for the specified source type.


=head2 SourceType => Str

  The source type that the returned categories belong to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

