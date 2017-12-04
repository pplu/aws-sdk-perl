package Paws::Health::EventTypeFilter;
  use Moose;
  has EventTypeCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventTypeCategories', traits => ['NameInRequest']);
  has EventTypeCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventTypeCodes', traits => ['NameInRequest']);
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'services', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventTypeFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventTypeFilter object:

  $service_obj->Method(Att1 => { EventTypeCategories => $value, ..., Services => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventTypeFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->EventTypeCategories

=head1 DESCRIPTION

The values to use to filter results from the DescribeEventTypes
operation.

=head1 ATTRIBUTES


=head2 EventTypeCategories => ArrayRef[Str|Undef]

  A list of event type category codes (C<issue>, C<scheduledChange>, or
C<accountNotification>).


=head2 EventTypeCodes => ArrayRef[Str|Undef]

  A list of event type codes.


=head2 Services => ArrayRef[Str|Undef]

  The AWS services associated with the event. For example, C<EC2>,
C<RDS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

