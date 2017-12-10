package Paws::CodePipeline::EncryptionKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::EncryptionKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::EncryptionKey object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::EncryptionKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Represents information about the key used to encrypt data in the
artifact store, such as an AWS Key Management Service (AWS KMS) key.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The ID used to identify the key. For an AWS KMS key, this is the key ID
or key ARN.


=head2 B<REQUIRED> Type => Str

  The type of encryption key, such as an AWS Key Management Service (AWS
KMS) key. When creating or updating a pipeline, the value must be set
to 'KMS'.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

