package Paws::MediaLive::ListChannelsResultModel;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ChannelSummary]', request_name => 'channels', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListChannelsResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ListChannelsResultModel object:

  $service_obj->Method(Att1 => { Channels => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ListChannelsResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Channels

=head1 DESCRIPTION

Placeholder documentation for ListChannelsResultModel

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::MediaLive::ChannelSummary>]

  


=head2 NextToken => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

