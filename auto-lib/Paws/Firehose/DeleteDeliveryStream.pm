
package Paws::Firehose::DeleteDeliveryStream;
  use Moose;
  has AllowForceDelete => (is => 'ro', isa => 'Bool');
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::DeleteDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DeleteDeliveryStream - Arguments for method DeleteDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDeliveryStream on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method DeleteDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDeliveryStream.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $DeleteDeliveryStreamOutput = $firehose->DeleteDeliveryStream(
      DeliveryStreamName => 'MyDeliveryStreamName',
      AllowForceDelete   => 1,                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/DeleteDeliveryStream>

=head1 ATTRIBUTES


=head2 AllowForceDelete => Bool

Set this to true if you want to delete the delivery stream even if
Kinesis Data Firehose is unable to retire the grant for the CMK.
Kinesis Data Firehose might be unable to retire the grant due to a
customer error, such as when the CMK or the grant are in an invalid
state. If you force deletion, you can then use the RevokeGrant
(https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html)
operation to revoke the grant you gave to Kinesis Data Firehose. If a
failure to retire the grant happens due to an AWS KMS issue, Kinesis
Data Firehose keeps retrying the delete operation.

The default value is false.



=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

