package Paws::Pinpoint::ChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'Paws::Pinpoint::MapOfChannelResponse', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ChannelsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ChannelsResponse object:

  $service_obj->Method(Att1 => { Channels => $value, ..., Channels => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ChannelsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Channels

=head1 DESCRIPTION

Provides information about the general settings and status of all
channels for an application, including channels that aren't enabled for
the application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => L<Paws::Pinpoint::MapOfChannelResponse>

  A map that contains a multipart response for each channel. For each
item in this object, the ChannelType is the key and the Channel is the
value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

