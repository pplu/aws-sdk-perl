package Paws::MediaConvert::OutputChannelMapping;
  use Moose;
  has InputChannels => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'inputChannels', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputChannelMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputChannelMapping object:

  $service_obj->Method(Att1 => { InputChannels => $value, ..., InputChannels => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputChannelMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->InputChannels

=head1 DESCRIPTION

OutputChannel mapping settings.

=head1 ATTRIBUTES


=head2 InputChannels => ArrayRef[Int]

  List of input channels



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

