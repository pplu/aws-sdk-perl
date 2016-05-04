package Paws::CodePipeline::ArtifactStore;
  use Moose;
  has EncryptionKey => (is => 'ro', isa => 'Paws::CodePipeline::EncryptionKey', xmlname => 'encryptionKey', request_name => 'encryptionKey', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactStore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactStore object:

  $service_obj->Method(Att1 => { EncryptionKey => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactStore object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionKey

=head1 DESCRIPTION

The Amazon S3 location where artifacts are stored for the pipeline. If
this Amazon S3 bucket is created manually, it must meet the
requirements for AWS CodePipeline. For more information, see the
Concepts.

=head1 ATTRIBUTES


=head2 EncryptionKey => L<Paws::CodePipeline::EncryptionKey>

  The encryption key used to encrypt the data in the artifact store, such
as an AWS Key Management Service (AWS KMS) key. If this is undefined,
the default key for Amazon S3 is used.


=head2 B<REQUIRED> Location => Str

  The location for storing the artifacts for a pipeline, such as an S3
bucket or folder.


=head2 B<REQUIRED> Type => Str

  The type of the artifact store, such as S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

