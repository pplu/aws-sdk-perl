
package Paws::Kinesis::StartStreamEncryption;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartStreamEncryption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::StartStreamEncryption - Arguments for method StartStreamEncryption on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartStreamEncryption on the 
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method StartStreamEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartStreamEncryption.

As an example:

  $service_obj->StartStreamEncryption(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

The encryption type to use. The only valid value is C<KMS>.

Valid values are: C<"NONE">, C<"KMS">

=head2 B<REQUIRED> KeyId => Str

The GUID for the customer-managed AWS KMS key to use for encryption.
This value can be a globally unique identifier, a fully specified
Amazon Resource Name (ARN) to either an alias or a key, or an alias
name prefixed by "alias/".You can also use a master key owned by
Kinesis Data Streams by specifying the alias C<aws/kinesis>.

=over

=item *

Key ARN example:
C<arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012>

=item *

Alias ARN example:
C<arn:aws:kms:us-east-1:123456789012:alias/MyAliasName>

=item *

Globally unique key ID example: C<12345678-1234-1234-1234-123456789012>

=item *

Alias name example: C<alias/MyAliasName>

=item *

Master key owned by Kinesis Data Streams: C<alias/aws/kinesis>

=back




=head2 B<REQUIRED> StreamName => Str

The name of the stream for which to start encrypting records.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartStreamEncryption in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

