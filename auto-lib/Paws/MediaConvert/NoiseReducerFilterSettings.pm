package Paws::MediaConvert::NoiseReducerFilterSettings;
  use Moose;
  has Strength => (is => 'ro', isa => 'Int', request_name => 'strength', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NoiseReducerFilterSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NoiseReducerFilterSettings object:

  $service_obj->Method(Att1 => { Strength => $value, ..., Strength => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NoiseReducerFilterSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Strength

=head1 DESCRIPTION

Settings for a noise reducer filter

=head1 ATTRIBUTES


=head2 Strength => Int

  Relative strength of noise reducing filter. Higher values produce
stronger filtering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

