package Paws::CodePipeline::ArtifactStore;
  use Moose;
  has encryptionKey => (is => 'ro', isa => 'Paws::CodePipeline::EncryptionKey');
  has location => (is => 'ro', isa => 'Str', required => 1);
  has type => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { encryptionKey => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactStore object:

  $result = $service_obj->Method(...);
  $result->Att1->encryptionKey

=head1 DESCRIPTION

The Amazon S3 location where artifacts are stored for the pipeline. If
this Amazon S3 bucket is created manually, it must meet the
requirements for AWS CodePipeline. For more information, see the
Concepts.

=head1 ATTRIBUTES

=head2 encryptionKey => L<Paws::CodePipeline::EncryptionKey>

  The AWS Key Management Service (AWS KMS) key used to encrypt the data
in the artifact store. If this is undefined, the default key for Amazon
S3 is used.

=head2 B<REQUIRED> location => Str

  The location for storing the artifacts for a pipeline, such as an S3
bucket or folder.

=head2 B<REQUIRED> type => Str

  The type of the artifact store, such as S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

