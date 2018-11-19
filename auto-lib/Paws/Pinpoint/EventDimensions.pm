package Paws::Pinpoint::EventDimensions;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfAttributeDimension');
  has EventType => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOfMetricDimension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventDimensions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventDimensions object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Metrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventDimensions object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Event dimensions.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Pinpoint::MapOfAttributeDimension>

  Custom attributes that your app reports to Amazon Pinpoint. You can use
these attributes as selection criteria when you create an event filter.


=head2 EventType => L<Paws::Pinpoint::SetDimension>

  The name of the event that causes the campaign to be sent. This can be
a standard event type that Amazon Pinpoint generates, such as
_session.start, or a custom event that's specific to your app.


=head2 Metrics => L<Paws::Pinpoint::MapOfMetricDimension>

  Custom metrics that your app reports to Amazon Pinpoint. You can use
these attributes as selection criteria when you create an event filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

