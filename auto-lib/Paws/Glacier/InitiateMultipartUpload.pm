
package Paws::Glacier::InitiateMultipartUpload;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ArchiveDescription => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-archive-description');
  has PartSize => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-part-size');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateMultipartUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/multipart-uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::InitiateMultipartUploadOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateMultipartUpload - Arguments for method InitiateMultipartUpload on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateMultipartUpload on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method InitiateMultipartUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateMultipartUpload.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To initiate a multipart upload
    # The example initiates a multipart upload to a vault named my-vault with a
    # part size of 1 MiB (1024 x 1024 bytes) per file.
    my $InitiateMultipartUploadOutput = $glacier->InitiateMultipartUpload(
      {
        'AccountId' => '-',
        'PartSize'  => 1048576,
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $location = $InitiateMultipartUploadOutput->location;
    my $uploadId = $InitiateMultipartUploadOutput->uploadId;

    # Returns a L<Paws::Glacier::InitiateMultipartUploadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/InitiateMultipartUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 ArchiveDescription => Str

The archive description that you are uploading in parts.

The part size must be a megabyte (1024 KB) multiplied by a power of 2,
for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8
MB), and so on. The minimum allowable part size is 1 MB, and the
maximum is 4 GB (4096 MB).



=head2 PartSize => Str

The size of each part except the last, in bytes. The last part can be
smaller than this part size.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateMultipartUpload in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

