package Paws::MediaLive::AudioChannelMapping;
  use Moose;
  has InputChannelLevels => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputChannelLevel]', request_name => 'inputChannelLevels', traits => ['NameInRequest'], required => 1);
  has OutputChannel => (is => 'ro', isa => 'Int', request_name => 'outputChannel', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioChannelMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioChannelMapping object:

  $service_obj->Method(Att1 => { InputChannelLevels => $value, ..., OutputChannel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioChannelMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->InputChannelLevels

=head1 DESCRIPTION

Placeholder documentation for AudioChannelMapping

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputChannelLevels => ArrayRef[L<Paws::MediaLive::InputChannelLevel>]

  Indices and gain values for each input channel that should be remixed
into this output channel.


=head2 B<REQUIRED> OutputChannel => Int

  The index of the output channel being produced.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

