package Paws::Pinpoint::ADMChannelRequest;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ADMChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ADMChannelRequest object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ADMChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

Amazon Device Messaging channel definition.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The Client ID that you obtained from the Amazon App Distribution
Portal.


=head2 ClientSecret => Str

  The Client Secret that you obtained from the Amazon App Distribution
Portal.


=head2 Enabled => Bool

  Indicates whether or not the channel is enabled for sending messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

