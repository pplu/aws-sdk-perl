# Generated from json/callargs_class.tt

package Paws::StorageGateway::CreateTapes;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag/;
  has ClientToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GatewayARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has KMSEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has KMSKey => (is => 'ro', isa => Str, predicate => 1);
  has NumTapesToCreate => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has PoolId => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag], predicate => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TapeSizeInBytes => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTapes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::CreateTapesOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'GatewayARN' => 1,
                    'ClientToken' => 1,
                    'TapeBarcodePrefix' => 1,
                    'NumTapesToCreate' => 1,
                    'TapeSizeInBytes' => 1
                  },
  'types' => {
               'NumTapesToCreate' => {
                                       'type' => 'Int'
                                     },
               'PoolId' => {
                             'type' => 'Str'
                           },
               'TapeBarcodePrefix' => {
                                        'type' => 'Str'
                                      },
               'Tags' => {
                           'class' => 'Paws::StorageGateway::Tag',
                           'type' => 'ArrayRef[StorageGateway_Tag]'
                         },
               'GatewayARN' => {
                                 'type' => 'Str'
                               },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'TapeSizeInBytes' => {
                                      'type' => 'Int'
                                    },
               'KMSEncrypted' => {
                                   'type' => 'Bool'
                                 },
               'ClientToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapes - Arguments for method CreateTapes on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTapes on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateTapes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTapes.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To create a virtual tape
    # Creates one or more virtual tapes.
    my $CreateTapesOutput = $storagegateway->CreateTapes(
      'ClientToken' => 77777,
      'GatewayARN' =>
        'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
      'NumTapesToCreate'  => 3,
      'TapeBarcodePrefix' => 'TEST',
      'TapeSizeInBytes'   => 107374182400
    );

    # Results:
    my $TapeARNs = $CreateTapesOutput->TapeARNs;

    # Returns a L<Paws::StorageGateway::CreateTapesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateTapes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier that you use to retry a request. If you retry a
request, use the same C<ClientToken> you specified in the initial
request.

Using the same C<ClientToken> prevents creating the tape multiple
times.



=head2 B<REQUIRED> GatewayARN => Str

The unique Amazon Resource Name (ARN) that represents the gateway to
associate the virtual tapes with. Use the ListGateways operation to
return a list of gateways for your account and AWS Region.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3
server side encryption. This value can only be set when KMSEncrypted is
true. Optional.



=head2 B<REQUIRED> NumTapesToCreate => Int

The number of virtual tapes that you want to create.



=head2 PoolId => Str

The ID of the pool that you want to add your tape to for archiving. The
tape in this pool is archived in the S3 storage class that is
associated with the pool. When you use your backup application to eject
the tape, the tape is archived directly into the storage class (Glacier
or Deep Archive) that corresponds to the pool.

Valid values: "GLACIER", "DEEP_ARCHIVE"



=head2 Tags => ArrayRef[StorageGateway_Tag]

A list of up to 50 tags that can be assigned to a virtual tape. Each
tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.



=head2 B<REQUIRED> TapeBarcodePrefix => Str

A prefix that you append to the barcode of the virtual tape you are
creating. This prefix makes the barcode unique.

The prefix must be 1 to 4 characters in length and must be one of the
uppercase letters from A to Z.



=head2 B<REQUIRED> TapeSizeInBytes => Int

The size, in bytes, of the virtual tapes that you want to create.

The size must be aligned by gigabyte (1024*1024*1024 byte).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTapes in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

