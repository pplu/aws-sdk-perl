
package Paws::Glacier::UploadMultipartPart;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sha256-tree-hash');
  has Range => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Range');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadMultipartPart');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::UploadMultipartPartOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::UploadMultipartPart - Arguments for method UploadMultipartPart on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadMultipartPart on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method UploadMultipartPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadMultipartPart.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
   # To upload the first part of an archive
   # The example uploads the first 1 MiB (1024 x 1024 bytes) part of an archive.
    my $UploadMultipartPartOutput = $glacier->UploadMultipartPart(
      {
        'AccountId' => '-',
        'Body'      => 'part1',
        'Checksum'  => 'c06f7cd4baacb087002a99a5f48bf953',
        'Range'     => 'bytes 0-1048575/*',
        'UploadId' =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
        'VaultName' => 'examplevault'
      }
    );

    # Results:
    my $checksum = $UploadMultipartPartOutput->checksum;

    # Returns a L<Paws::Glacier::UploadMultipartPartOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/UploadMultipartPart>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Body => Str

The data to upload.



=head2 Checksum => Str

The SHA256 tree hash of the data being uploaded.



=head2 Range => Str

Identifies the range of bytes in the assembled archive that will be
uploaded in this part. Amazon Glacier uses this information to assemble
the archive in the proper sequence. The format of this header follows
RFC 2616. An example header is Content-Range:bytes 0-4194303/*.



=head2 B<REQUIRED> UploadId => Str

The upload ID of the multipart upload.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadMultipartPart in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

