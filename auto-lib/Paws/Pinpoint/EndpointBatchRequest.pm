package Paws::Pinpoint::EndpointBatchRequest;
  use Moose;
<<<<<<< HEAD
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::EndpointBatchItem]', required => 1);
=======
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::EndpointBatchItem]');

>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointBatchRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointBatchRequest object:

  $service_obj->Method(Att1 => { Item => $value, ..., Item => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointBatchRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Specifies a batch of endpoints to create or update and the settings and
attributes to set or change for each endpoint.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[L<Paws::Pinpoint::EndpointBatchItem>]

  An array that defines the endpoints to create or update and, for each
endpoint, the property values to set or change. An array can contain a
maximum of 100 items.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

