package Paws::Health::DateTimeRange;
  use Moose;
  has From => (is => 'ro', isa => 'Str', request_name => 'from', traits => ['NameInRequest']);
  has To => (is => 'ro', isa => 'Str', request_name => 'to', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DateTimeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::DateTimeRange object:

  $service_obj->Method(Att1 => { From => $value, ..., To => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::DateTimeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->From

=head1 DESCRIPTION

A range of dates and times that is used by the EventFilter and
EntityFilter objects. If C<from> is set and C<to> is set: match items
where the timestamp (C<startTime>, C<endTime>, or C<lastUpdatedTime>)
is between C<from> and C<to> inclusive. If C<from> is set and C<to> is
not set: match items where the timestamp value is equal to or after
C<from>. If C<from> is not set and C<to> is set: match items where the
timestamp value is equal to or before C<to>.

=head1 ATTRIBUTES


=head2 From => Str

  The starting date and time of a time range.


=head2 To => Str

  The ending date and time of a time range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

