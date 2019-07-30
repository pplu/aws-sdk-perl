package Paws::MediaLive::MediaPackageOutputDestinationSettings;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', request_name => 'channelId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MediaPackageOutputDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MediaPackageOutputDestinationSettings object:

  $service_obj->Method(Att1 => { ChannelId => $value, ..., ChannelId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MediaPackageOutputDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelId

=head1 DESCRIPTION

MediaPackage Output Destination Settings

=head1 ATTRIBUTES


=head2 ChannelId => Str

  ID of the channel in MediaPackage that is the destination for this
output group. You do not need to specify the individual inputs in
MediaPackage; MediaLive will handle the connection of the two MediaLive
pipelines to the two MediaPackage inputs. The MediaPackage channel and
MediaLive channel must be in the same region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

