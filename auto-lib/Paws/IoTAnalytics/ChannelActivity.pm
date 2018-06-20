package Paws::IoTAnalytics::ChannelActivity;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', request_name => 'channelName', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Next => (is => 'ro', isa => 'Str', request_name => 'next', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ChannelActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::ChannelActivity object:

  $service_obj->Method(Att1 => { ChannelName => $value, ..., Next => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::ChannelActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelName

=head1 DESCRIPTION

The activity that determines the source of the messages to be
processed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

  The name of the channel from which the messages are processed.


=head2 B<REQUIRED> Name => Str

  The name of the 'channel' activity.


=head2 Next => Str

  The next activity in the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

