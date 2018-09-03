package Paws::CodeBuild::ProjectArtifacts;
  use Moose;
  has ArtifactIdentifier => (is => 'ro', isa => 'Str', request_name => 'artifactIdentifier', traits => ['NameInRequest']);
  has EncryptionDisabled => (is => 'ro', isa => 'Bool', request_name => 'encryptionDisabled', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has NamespaceType => (is => 'ro', isa => 'Str', request_name => 'namespaceType', traits => ['NameInRequest']);
  has OverrideArtifactName => (is => 'ro', isa => 'Bool', request_name => 'overrideArtifactName', traits => ['NameInRequest']);
  has Packaging => (is => 'ro', isa => 'Str', request_name => 'packaging', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectArtifacts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectArtifacts object:

  $service_obj->Method(Att1 => { ArtifactIdentifier => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectArtifacts object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactIdentifier

=head1 DESCRIPTION

Information about the build output artifacts for the build project.

=head1 ATTRIBUTES


=head2 ArtifactIdentifier => Str

  An identifier for this artifact definition.


=head2 EncryptionDisabled => Bool

  Set to true if you do not want your output artifacts encrypted. This
option is only valid if your artifacts type is Amazon S3. If this is
set with another artifacts type, an invalidInputException will be
thrown.


=head2 Location => Str

  Information about the build output artifact location, as follows:

=over

=item *

If C<type> is set to C<CODEPIPELINE>, then AWS CodePipeline will ignore
this value if specified. This is because AWS CodePipeline manages its
build output locations instead of AWS CodeBuild.

=item *

If C<type> is set to C<NO_ARTIFACTS>, then this value will be ignored
if specified, because no build output will be produced.

=item *

If C<type> is set to C<S3>, this is the name of the output bucket.

=back



=head2 Name => Str

  Along with C<path> and C<namespaceType>, the pattern that AWS CodeBuild
will use to name and store the output artifact, as follows:

=over

=item *

If C<type> is set to C<CODEPIPELINE>, then AWS CodePipeline will ignore
this value if specified. This is because AWS CodePipeline manages its
build output names instead of AWS CodeBuild.

=item *

If C<type> is set to C<NO_ARTIFACTS>, then this value will be ignored
if specified, because no build output will be produced.

=item *

If C<type> is set to C<S3>, this is the name of the output artifact
object. If you set the name to be a forward slash ("/"), then the
artifact is stored in the root of the output bucket.

=back

For example:

=over

=item *

If C<path> is set to C<MyArtifacts>, C<namespaceType> is set to
C<BUILD_ID>, and C<name> is set to C<MyArtifact.zip>, then the output
artifact would be stored in C<MyArtifacts/I<build-ID>/MyArtifact.zip>.

=item *

If C<path> is empty, C<namespaceType> is set to C<NONE>, and C<name> is
set to "C</>", then the output artifact would be stored in the root of
the output bucket.

=item *

If C<path> is set to C<MyArtifacts>, C<namespaceType> is set to
C<BUILD_ID>, and C<name> is set to "C</>", then the output artifact
would be stored in C<MyArtifacts/I<build-ID> >.

=back



=head2 NamespaceType => Str

  Along with C<path> and C<name>, the pattern that AWS CodeBuild will use
to determine the name and location to store the output artifact, as
follows:

=over

=item *

If C<type> is set to C<CODEPIPELINE>, then AWS CodePipeline will ignore
this value if specified. This is because AWS CodePipeline manages its
build output names instead of AWS CodeBuild.

=item *

If C<type> is set to C<NO_ARTIFACTS>, then this value will be ignored
if specified, because no build output will be produced.

=item *

If C<type> is set to C<S3>, then valid values include:

=over

=item *

C<BUILD_ID>: Include the build ID in the location of the build output
artifact.

=item *

C<NONE>: Do not include the build ID. This is the default if
C<namespaceType> is not specified.

=back

=back

For example, if C<path> is set to C<MyArtifacts>, C<namespaceType> is
set to C<BUILD_ID>, and C<name> is set to C<MyArtifact.zip>, then the
output artifact would be stored in
C<MyArtifacts/I<build-ID>/MyArtifact.zip>.


=head2 OverrideArtifactName => Bool

  If this flag is set, a name specified in the buildspec file overrides
the artifact name. The name specified in a buildspec file is calculated
at build time and uses the Shell Command Language. For example, you can
append a date and time to your artifact name so that it is always
unique.


=head2 Packaging => Str

  The type of build output artifact to create, as follows:

=over

=item *

If C<type> is set to C<CODEPIPELINE>, then AWS CodePipeline will ignore
this value if specified. This is because AWS CodePipeline manages its
build output artifacts instead of AWS CodeBuild.

=item *

If C<type> is set to C<NO_ARTIFACTS>, then this value will be ignored
if specified, because no build output will be produced.

=item *

If C<type> is set to C<S3>, valid values include:

=over

=item *

C<NONE>: AWS CodeBuild will create in the output bucket a folder
containing the build output. This is the default if C<packaging> is not
specified.

=item *

C<ZIP>: AWS CodeBuild will create in the output bucket a ZIP file
containing the build output.

=back

=back



=head2 Path => Str

  Along with C<namespaceType> and C<name>, the pattern that AWS CodeBuild
will use to name and store the output artifact, as follows:

=over

=item *

If C<type> is set to C<CODEPIPELINE>, then AWS CodePipeline will ignore
this value if specified. This is because AWS CodePipeline manages its
build output names instead of AWS CodeBuild.

=item *

If C<type> is set to C<NO_ARTIFACTS>, then this value will be ignored
if specified, because no build output will be produced.

=item *

If C<type> is set to C<S3>, this is the path to the output artifact. If
C<path> is not specified, then C<path> will not be used.

=back

For example, if C<path> is set to C<MyArtifacts>, C<namespaceType> is
set to C<NONE>, and C<name> is set to C<MyArtifact.zip>, then the
output artifact would be stored in the output bucket at
C<MyArtifacts/MyArtifact.zip>.


=head2 B<REQUIRED> Type => Str

  The type of build output artifact. Valid values include:

=over

=item *

C<CODEPIPELINE>: The build project will have build output generated
through AWS CodePipeline.

=item *

C<NO_ARTIFACTS>: The build project will not produce any build output.

=item *

C<S3>: The build project will store build output in Amazon Simple
Storage Service (Amazon S3).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

