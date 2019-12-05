package Paws::SageMaker::UiTemplateInfo;
  use Moose;
  has ContentSha256 => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UiTemplateInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::UiTemplateInfo object:

  $service_obj->Method(Att1 => { ContentSha256 => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::UiTemplateInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentSha256

=head1 DESCRIPTION

Container for user interface template information.

=head1 ATTRIBUTES


=head2 ContentSha256 => Str

  The SHA 256 hash that you used to create the request signature.


=head2 Url => Str

  The URL for the user interface template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

