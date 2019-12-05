package Paws::Firehose::DeliveryStreamEncryptionConfigurationInput;
  use Moose;
  has KeyARN => (is => 'ro', isa => 'Str');
  has KeyType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DeliveryStreamEncryptionConfigurationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::DeliveryStreamEncryptionConfigurationInput object:

  $service_obj->Method(Att1 => { KeyARN => $value, ..., KeyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::DeliveryStreamEncryptionConfigurationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyARN

=head1 DESCRIPTION

Used to specify the type and Amazon Resource Name (ARN) of the CMK
needed for Server-Side Encryption (SSE).

=head1 ATTRIBUTES


=head2 KeyARN => Str

  If you set C<KeyType> to C<CUSTOMER_MANAGED_CMK>, you must specify the
Amazon Resource Name (ARN) of the CMK. If you set C<KeyType> to
C<AWS_OWNED_CMK>, Kinesis Data Firehose uses a service-account CMK.


=head2 B<REQUIRED> KeyType => Str

  Indicates the type of customer master key (CMK) to use for encryption.
The default setting is C<AWS_OWNED_CMK>. For more information about
CMKs, see Customer Master Keys (CMKs)
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys).
When you invoke CreateDeliveryStream or StartDeliveryStreamEncryption
with C<KeyType> set to CUSTOMER_MANAGED_CMK, Kinesis Data Firehose
invokes the Amazon KMS operation CreateGrant
(https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html)
to create a grant that allows the Kinesis Data Firehose service to use
the customer managed CMK to perform encryption and decryption. Kinesis
Data Firehose manages that grant.

When you invoke StartDeliveryStreamEncryption to change the CMK for a
delivery stream that is already encrypted with a customer managed CMK,
Kinesis Data Firehose schedules the grant it had on the old CMK for
retirement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

