package Paws::MediaConvert::TtmlDestinationSettings;
  use Moose;
  has StylePassthrough => (is => 'ro', isa => 'Str', request_name => 'stylePassthrough', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TtmlDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TtmlDestinationSettings object:

  $service_obj->Method(Att1 => { StylePassthrough => $value, ..., StylePassthrough => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TtmlDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->StylePassthrough

=head1 DESCRIPTION

Settings specific to TTML caption outputs, including Pass style
information (TtmlStylePassthrough).

=head1 ATTRIBUTES


=head2 StylePassthrough => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

