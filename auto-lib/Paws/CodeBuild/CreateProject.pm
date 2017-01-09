
package Paws::CodeBuild::CreateProject;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifacts' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', traits => ['NameInRequest'], request_name => 'environment' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole' );
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', traits => ['NameInRequest'], request_name => 'source' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::CreateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateProject - Arguments for method CreateProject on Paws::CodeBuild

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the 
AWS CodeBuild service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

As an example:

  $service_obj->CreateProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information about the build project's build output artifacts.



=head2 Description => Str

A meaningful description of the build project.



=head2 EncryptionKey => Str

The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build project's build output artifacts.

You can specify either the CMK's Amazon Resource Name (ARN) or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).



=head2 B<REQUIRED> Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information about the build project's build environment.



=head2 B<REQUIRED> Name => Str

The build project's name.



=head2 ServiceRole => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that enables AWS CodeBuild to interact with
dependent AWS services on behalf of the AWS account.



=head2 B<REQUIRED> Source => L<Paws::CodeBuild::ProjectSource>

Information about the build project's build input source code.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

A set of tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait
until timing out any related build that does not get marked as
completed. The default is 60 minutes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

