package Paws::RedShift::EventInfoMap;
  use Moose;
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'EventCategory', traits => ['NameInRequest']);
  has EventDescription => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventInfoMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::EventInfoMap object:

  $service_obj->Method(Att1 => { EventCategories => $value, ..., Severity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::EventInfoMap object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCategories

=head1 DESCRIPTION

Describes event information.

=head1 ATTRIBUTES


=head2 EventCategories => ArrayRef[Str|Undef]

  The category of an Amazon Redshift event.


=head2 EventDescription => Str

  The description of an Amazon Redshift event.


=head2 EventId => Str

  The identifier of an Amazon Redshift event.


=head2 Severity => Str

  The severity of the event.

Values: ERROR, INFO



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

