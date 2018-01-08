package Paws::Snowball::ShippingDetails;
  use Moose;
  has InboundShipment => (is => 'ro', isa => 'Paws::Snowball::Shipment');
  has OutboundShipment => (is => 'ro', isa => 'Paws::Snowball::Shipment');
  has ShippingOption => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ShippingDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::ShippingDetails object:

  $service_obj->Method(Att1 => { InboundShipment => $value, ..., ShippingOption => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::ShippingDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->InboundShipment

=head1 DESCRIPTION

A job's shipping information, including inbound and outbound tracking
numbers and shipping speed options.

=head1 ATTRIBUTES


=head2 InboundShipment => L<Paws::Snowball::Shipment>

  The C<Status> and C<TrackingNumber> values for a Snowball being
returned to AWS for a particular job.


=head2 OutboundShipment => L<Paws::Snowball::Shipment>

  The C<Status> and C<TrackingNumber> values for a Snowball being
delivered to the address that you specified for a particular job.


=head2 ShippingOption => Str

  The shipping speed for a particular job. This speed doesn't dictate how
soon you'll get the Snowball from the job's creation date. This speed
represents how quickly it moves to its destination while in transit.
Regional shipping speeds are as follows:

=over

=item *

In Australia, you have access to express shipping. Typically, Snowballs
shipped express are delivered in about a day.

=item *

In the European Union (EU), you have access to express shipping.
Typically, Snowballs shipped express are delivered in about a day. In
addition, most countries in the EU have access to standard shipping,
which typically takes less than a week, one way.

=item *

In India, Snowballs are delivered in one to seven days.

=item *

In the United States of America (US), you have access to one-day
shipping and two-day shipping.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

