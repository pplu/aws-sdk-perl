package Paws::ServerlessRepo::CreateApplicationVersionInput;
  use Moose;
  has SourceCodeUrl => (is => 'ro', isa => 'Str', request_name => 'sourceCodeUrl', traits => ['NameInRequest']);
  has TemplateBody => (is => 'ro', isa => 'Str', request_name => 'templateBody', traits => ['NameInRequest']);
  has TemplateUrl => (is => 'ro', isa => 'Str', request_name => 'templateUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationVersionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::CreateApplicationVersionInput object:

  $service_obj->Method(Att1 => { SourceCodeUrl => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::CreateApplicationVersionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceCodeUrl

=head1 DESCRIPTION

Create a version request.

=head1 ATTRIBUTES


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application.


=head2 TemplateBody => Str

  The raw packaged AWS SAM template of your application.


=head2 TemplateUrl => Str

  A link to the packaged AWS SAM template of your application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

