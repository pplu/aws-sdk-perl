package Paws::Comprehend::EntityRecognizerFilter;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has SubmitTimeAfter => (is => 'ro', isa => 'Str');
  has SubmitTimeBefore => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerFilter object:

  $service_obj->Method(Att1 => { Status => $value, ..., SubmitTimeBefore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Provides information for filtering a list of entity recognizers. You
can only specify one filtering parameter in a request. For more
information, see the operation./E<gt>

=head1 ATTRIBUTES


=head2 Status => Str

  The status of an entity recognizer.


=head2 SubmitTimeAfter => Str

  Filters the list of entities based on the time that the list was
submitted for processing. Returns only jobs submitted after the
specified time. Jobs are returned in ascending order, oldest to newest.


=head2 SubmitTimeBefore => Str

  Filters the list of entities based on the time that the list was
submitted for processing. Returns only jobs submitted before the
specified time. Jobs are returned in descending order, newest to
oldest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

