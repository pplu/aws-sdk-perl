package Paws::Kendra::ServerSideEncryptionConfiguration;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ServerSideEncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ServerSideEncryptionConfiguration object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., KmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ServerSideEncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
asymmetric CMKs.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The identifier of the AWS KMS customer master key (CMK). Amazon Kendra
doesn't support asymmetric CMKs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

