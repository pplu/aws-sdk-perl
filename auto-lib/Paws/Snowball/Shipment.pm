package Paws::Snowball::Shipment;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has TrackingNumber => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::Shipment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::Shipment object:

  $service_obj->Method(Att1 => { Status => $value, ..., TrackingNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::Shipment object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

The C<Status> and C<TrackingNumber> information for an inbound or
outbound shipment.

=head1 ATTRIBUTES


=head2 Status => Str

  Status information for a shipment.


=head2 TrackingNumber => Str

  The tracking number for this job. Using this tracking number with your
region's carrier's website, you can track a Snowball as the carrier
transports it.

For India, the carrier is Amazon Logistics. For all other regions, UPS
is the carrier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

