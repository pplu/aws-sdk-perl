
package Paws::ServerlessRepo::CreateApplicationVersionResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has ParameterDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterDefinition]', traits => ['NameInRequest'], request_name => 'parameterDefinitions');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');
  has SourceCodeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCodeUrl');
  has TemplateUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationVersionResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application Amazon Resource Name (ARN).


=head2 CreationTime => Str

The date/time this resource was created.


=head2 ParameterDefinitions => ArrayRef[L<Paws::ServerlessRepo::ParameterDefinition>]

Array of parameter types supported by the application.


=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/


=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application.


=head2 TemplateUrl => Str

A link to the packaged AWS SAM template of your application.


=head2 _request_id => Str


=cut

