package Paws::MediaLive::UpdateChannelClass;
  use Moose;
  has ChannelClass => (is => 'ro', isa => 'Str', request_name => 'channelClass', traits => ['NameInRequest'], required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelClass

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UpdateChannelClass object:

  $service_obj->Method(Att1 => { ChannelClass => $value, ..., Destinations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UpdateChannelClass object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelClass

=head1 DESCRIPTION

Placeholder documentation for UpdateChannelClass

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelClass => Str

  The channel class that you wish to update this channel to use.


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

  A list of output destinations for this channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

