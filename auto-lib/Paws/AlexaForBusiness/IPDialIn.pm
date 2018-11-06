package Paws::AlexaForBusiness::IPDialIn;
  use Moose;
  has CommsProtocol => (is => 'ro', isa => 'Str', required => 1);
  has Endpoint => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::IPDialIn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::IPDialIn object:

  $service_obj->Method(Att1 => { CommsProtocol => $value, ..., Endpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::IPDialIn object:

  $result = $service_obj->Method(...);
  $result->Att1->CommsProtocol

=head1 DESCRIPTION

The IP endpoint and protocol for calling.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommsProtocol => Str

  The protocol, including SIP, SIPS, and H323.


=head2 B<REQUIRED> Endpoint => Str

  The IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

