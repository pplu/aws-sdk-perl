package Paws::MediaConvert::AudioSelectorGroup;
  use Moose;
  has AudioSelectorNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'audioSelectorNames', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioSelectorGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioSelectorGroup object:

  $service_obj->Method(Att1 => { AudioSelectorNames => $value, ..., AudioSelectorNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioSelectorGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioSelectorNames

=head1 DESCRIPTION

Group of Audio Selectors

=head1 ATTRIBUTES


=head2 AudioSelectorNames => ArrayRef[Str|Undef]

  Name of an Audio Selector within the same input to include in the
group. Audio selector names are standardized, based on their order
within the input (e.g., "Audio Selector 1"). The audio selector name
parameter can be repeated to add any number of audio selectors to the
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

