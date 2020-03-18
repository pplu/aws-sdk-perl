package Paws::Pinpoint::EventsBatch;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::Pinpoint::PublicEndpoint', required => 1);
  has Events => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEvent', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventsBatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventsBatch object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., Events => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventsBatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

Specifies a batch of endpoints and events to process.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoint => L<Paws::Pinpoint::PublicEndpoint>

  A set of properties and attributes that are associated with the
endpoint.


=head2 B<REQUIRED> Events => L<Paws::Pinpoint::MapOfEvent>

  A set of properties that are associated with the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

