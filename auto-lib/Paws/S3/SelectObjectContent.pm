
package Paws::S3::SelectObjectContent;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Expression => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionType => (is => 'ro', isa => 'Str', required => 1);
  has InputSerialization => (is => 'ro', isa => 'Paws::S3::InputSerialization', required => 1);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has OutputSerialization => (is => 'ro', isa => 'Paws::S3::OutputSerialization', required => 1);
  has RequestProgress => (is => 'ro', isa => 'Paws::S3::RequestProgress');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SelectObjectContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?select&select-type=2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::SelectObjectContentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectObjectContent - Arguments for method SelectObjectContent on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SelectObjectContent on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method SelectObjectContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SelectObjectContent.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $SelectObjectContentOutput = $s3->SelectObjectContent(
      Bucket             => 'MyBucketName',
      Expression         => 'MyExpression',
      ExpressionType     => 'SQL',
      InputSerialization => {
        CSV => {
          AllowQuotedRecordDelimiter => 1,                     # OPTIONAL
          Comments                   => 'MyComments',          # OPTIONAL
          FieldDelimiter             => 'MyFieldDelimiter',    # OPTIONAL
          FileHeaderInfo => 'USE',    # values: USE, IGNORE, NONE; OPTIONAL
          QuoteCharacter       => 'MyQuoteCharacter',          # OPTIONAL
          QuoteEscapeCharacter => 'MyQuoteEscapeCharacter',    # OPTIONAL
          RecordDelimiter      => 'MyRecordDelimiter',         # OPTIONAL
        },    # OPTIONAL
        CompressionType => 'NONE',    # values: NONE, GZIP, BZIP2; OPTIONAL
        JSON            => {
          Type => 'DOCUMENT',         # values: DOCUMENT, LINES; OPTIONAL
        },    # OPTIONAL
        Parquet => {

        },    # OPTIONAL
      },
      Key                 => 'MyObjectKey',
      OutputSerialization => {
        CSV => {
          FieldDelimiter       => 'MyFieldDelimiter',          # OPTIONAL
          QuoteCharacter       => 'MyQuoteCharacter',          # OPTIONAL
          QuoteEscapeCharacter => 'MyQuoteEscapeCharacter',    # OPTIONAL
          QuoteFields => 'ALWAYS',    # values: ALWAYS, ASNEEDED; OPTIONAL
          RecordDelimiter => 'MyRecordDelimiter',    # OPTIONAL
        },    # OPTIONAL
        JSON => {
          RecordDelimiter => 'MyRecordDelimiter',    # OPTIONAL
        },    # OPTIONAL
      },
      RequestProgress => {
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
      SSECustomerAlgorithm => 'MySSECustomerAlgorithm',    # OPTIONAL
      SSECustomerKey       => 'MySSECustomerKey',          # OPTIONAL
      SSECustomerKeyMD5    => 'MySSECustomerKeyMD5',       # OPTIONAL
    );

    # Results:
    my $Payload = $SelectObjectContentOutput->Payload;

    # Returns a L<Paws::S3::SelectObjectContentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/SelectObjectContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The S3 bucket.



=head2 B<REQUIRED> Expression => Str

The expression that is used to query the object.



=head2 B<REQUIRED> ExpressionType => Str

The type of the provided expression (for example., SQL).

Valid values are: C<"SQL">

=head2 B<REQUIRED> InputSerialization => L<Paws::S3::InputSerialization>

Describes the format of the data in the object that is being queried.



=head2 B<REQUIRED> Key => Str

The object key.



=head2 B<REQUIRED> OutputSerialization => L<Paws::S3::OutputSerialization>

Describes the format of the data that you want Amazon S3 to return in
response.



=head2 RequestProgress => L<Paws::S3::RequestProgress>

Specifies if periodic request progress information should be enabled.



=head2 SSECustomerAlgorithm => Str

The SSE Algorithm used to encrypt the object. For more information, see
Server-Side Encryption (Using Customer-Provided Encryption Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).



=head2 SSECustomerKey => Str

The SSE Customer Key. For more information, see Server-Side Encryption
(Using Customer-Provided Encryption Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).



=head2 SSECustomerKeyMD5 => Str

The SSE Customer Key MD5. For more information, see Server-Side
Encryption (Using Customer-Provided Encryption Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SelectObjectContent in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

