# Generated from default/object.tt
package Paws::MediaConvert::S3EncryptionSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has EncryptionType => (is => 'ro', isa => Str);
  has KmsKeyArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KmsKeyArn' => {
                                'type' => 'Str'
                              },
               'EncryptionType' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'KmsKeyArn' => 'kmsKeyArn',
                       'EncryptionType' => 'encryptionType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::S3EncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::S3EncryptionSettings object:

  $service_obj->Method(Att1 => { EncryptionType => $value, ..., KmsKeyArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::S3EncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionType

=head1 DESCRIPTION

Settings for how your job outputs are encrypted as they are uploaded to
Amazon S3.

=head1 ATTRIBUTES


=head2 EncryptionType => Str

  Specify how you want your data keys managed. AWS uses data keys to
encrypt your content. AWS also encrypts the data keys themselves, using
a customer master key (CMK), and then stores the encrypted data keys
alongside your encrypted content. Use this setting to specify which AWS
service manages the CMK. For simplest set up, choose Amazon S3
(SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed
by AWS Key Management Service (KMS), choose AWS KMS
(SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS
uses the AWS managed customer master key (CMK) associated with Amazon
S3 to encrypt your data keys. You can optionally choose to specify a
different, customer managed CMK. Do so by specifying the Amazon
Resource Name (ARN) of the key for the setting KMS ARN (kmsKeyArn).


=head2 KmsKeyArn => Str

  Optionally, specify the customer master key (CMK) that you want to use
to encrypt the data key that AWS uses to encrypt your output content.
Enter the Amazon Resource Name (ARN) of the CMK. To use this setting,
you must also set Server-side encryption (S3ServerSideEncryptionType)
to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). If you set Server-side
encryption to AWS KMS but don't specify a CMK here, AWS uses the AWS
managed CMK associated with Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

