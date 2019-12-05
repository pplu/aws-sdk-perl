package Paws::Firehose::DeliveryStreamEncryptionConfiguration;
  use Moose;
  has FailureDescription => (is => 'ro', isa => 'Paws::Firehose::FailureDescription');
  has KeyARN => (is => 'ro', isa => 'Str');
  has KeyType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DeliveryStreamEncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::DeliveryStreamEncryptionConfiguration object:

  $service_obj->Method(Att1 => { FailureDescription => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::DeliveryStreamEncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureDescription

=head1 DESCRIPTION

Contains information about the server-side encryption (SSE) status for
the delivery stream, the type customer master key (CMK) in use, if any,
and the ARN of the CMK. You can get
C<DeliveryStreamEncryptionConfiguration> by invoking the
DescribeDeliveryStream operation.

=head1 ATTRIBUTES


=head2 FailureDescription => L<Paws::Firehose::FailureDescription>

  Provides details in case one of the following operations fails due to
an error related to KMS: CreateDeliveryStream, DeleteDeliveryStream,
StartDeliveryStreamEncryption, StopDeliveryStreamEncryption.


=head2 KeyARN => Str

  If C<KeyType> is C<CUSTOMER_MANAGED_CMK>, this field contains the ARN
of the customer managed CMK. If C<KeyType> is C<AWS_OWNED_CMK>,
C<DeliveryStreamEncryptionConfiguration> doesn't contain a value for
C<KeyARN>.


=head2 KeyType => Str

  Indicates the type of customer master key (CMK) that is used for
encryption. The default setting is C<AWS_OWNED_CMK>. For more
information about CMKs, see Customer Master Keys (CMKs)
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys).


=head2 Status => Str

  This is the server-side encryption (SSE) status for the delivery
stream. For a full description of the different values of this status,
see StartDeliveryStreamEncryption and StopDeliveryStreamEncryption. If
this status is C<ENABLING_FAILED> or C<DISABLING_FAILED>, it is the
status of the most recent attempt to enable or disable SSE,
respectively.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

