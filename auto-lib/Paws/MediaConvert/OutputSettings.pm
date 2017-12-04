package Paws::MediaConvert::OutputSettings;
  use Moose;
  has HlsSettings => (is => 'ro', isa => 'Paws::MediaConvert::HlsSettings', request_name => 'hlsSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputSettings object:

  $service_obj->Method(Att1 => { HlsSettings => $value, ..., HlsSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->HlsSettings

=head1 DESCRIPTION

Specific settings for this type of output.

=head1 ATTRIBUTES


=head2 HlsSettings => L<Paws::MediaConvert::HlsSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

