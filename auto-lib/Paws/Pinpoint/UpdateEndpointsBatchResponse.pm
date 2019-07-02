package Paws::Pinpoint::UpdateEndpointsBatchResponse;
  use Moose;
  has MessageBody => (is => 'ro', isa => 'Paws::Pinpoint::MessageBody', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpointsBatchResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::UpdateEndpointsBatchResponse object:

  $service_obj->Method(Att1 => { MessageBody => $value, ..., MessageBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::UpdateEndpointsBatchResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageBody

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageBody => L<Paws::Pinpoint::MessageBody>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

