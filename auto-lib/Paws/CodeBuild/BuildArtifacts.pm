# Generated from default/object.tt
package Paws::CodeBuild::BuildArtifacts;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeBuild::Types qw//;
  has ArtifactIdentifier => (is => 'ro', isa => Str);
  has EncryptionDisabled => (is => 'ro', isa => Bool);
  has Location => (is => 'ro', isa => Str);
  has Md5sum => (is => 'ro', isa => Str);
  has OverrideArtifactName => (is => 'ro', isa => Bool);
  has Sha256sum => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ArtifactIdentifier' => {
                                         'type' => 'Str'
                                       },
               'EncryptionDisabled' => {
                                         'type' => 'Bool'
                                       },
               'Sha256sum' => {
                                'type' => 'Str'
                              },
               'OverrideArtifactName' => {
                                           'type' => 'Bool'
                                         },
               'Location' => {
                               'type' => 'Str'
                             },
               'Md5sum' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ArtifactIdentifier' => 'artifactIdentifier',
                       'EncryptionDisabled' => 'encryptionDisabled',
                       'Sha256sum' => 'sha256sum',
                       'OverrideArtifactName' => 'overrideArtifactName',
                       'Location' => 'location',
                       'Md5sum' => 'md5sum'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BuildArtifacts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::BuildArtifacts object:

  $service_obj->Method(Att1 => { ArtifactIdentifier => $value, ..., Sha256sum => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::BuildArtifacts object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactIdentifier

=head1 DESCRIPTION

Information about build output artifacts.

=head1 ATTRIBUTES


=head2 ArtifactIdentifier => Str

  An identifier for this artifact definition.


=head2 EncryptionDisabled => Bool

  Information that tells you if encryption for build artifacts is
disabled.


=head2 Location => Str

  Information about the location of the build artifacts.


=head2 Md5sum => Str

  The MD5 hash of the build artifact.

You can use this hash along with a checksum tool to confirm file
integrity and authenticity.

This value is available only if the build project's C<packaging> value
is set to C<ZIP>.


=head2 OverrideArtifactName => Bool

  If this flag is set, a name specified in the build spec file overrides
the artifact name. The name specified in a build spec file is
calculated at build time and uses the Shell Command Language. For
example, you can append a date and time to your artifact name so that
it is always unique.


=head2 Sha256sum => Str

  The SHA-256 hash of the build artifact.

You can use this hash along with a checksum tool to confirm file
integrity and authenticity.

This value is available only if the build project's C<packaging> value
is set to C<ZIP>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

