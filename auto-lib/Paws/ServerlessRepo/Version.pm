package Paws::ServerlessRepo::Version;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has ParameterDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterDefinition]', request_name => 'parameterDefinitions', traits => ['NameInRequest']);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest']);
  has SourceCodeUrl => (is => 'ro', isa => 'Str', request_name => 'sourceCodeUrl', traits => ['NameInRequest']);
  has TemplateUrl => (is => 'ro', isa => 'Str', request_name => 'templateUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::Version

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::Version object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::Version object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Application version details.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 CreationTime => Str

  The date/time this resource was created.


=head2 ParameterDefinitions => ArrayRef[L<Paws::ServerlessRepo::ParameterDefinition>]

  Array of parameter types supported by the application.


=head2 SemanticVersion => Str

  The semantic version of the application:\n\n https://semver.org/


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application.


=head2 TemplateUrl => Str

  A link to the packaged SAM template of your application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

