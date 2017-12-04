package Paws::Pinpoint::GCMChannelRequest;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GCMChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GCMChannelRequest object:

  $service_obj->Method(Att1 => { ApiKey => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GCMChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKey

=head1 DESCRIPTION

Google Cloud Messaging credentials

=head1 ATTRIBUTES


=head2 ApiKey => Str

  Platform credential API key from Google.


=head2 Enabled => Bool

  If the channel is enabled for sending messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

