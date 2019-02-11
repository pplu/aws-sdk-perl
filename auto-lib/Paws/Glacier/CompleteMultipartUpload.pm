
package Paws::Glacier::CompleteMultipartUpload;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ArchiveSize => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-archive-size');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sha256-tree-hash');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ArchiveCreationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CompleteMultipartUpload - Arguments for method CompleteMultipartUpload on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMultipartUpload on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method CompleteMultipartUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMultipartUpload.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To complete a multipart upload
    # The example completes a multipart upload for a 3 MiB archive.
    my $ArchiveCreationOutput = $glacier->CompleteMultipartUpload(
      {
        'AccountId'   => '-',
        'ArchiveSize' => 3145728,
        'Checksum' =>
          '9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67',
        'UploadId' =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $archiveId = $ArchiveCreationOutput->archiveId;
    my $checksum  = $ArchiveCreationOutput->checksum;
    my $location  = $ArchiveCreationOutput->location;

    # Returns a L<Paws::Glacier::ArchiveCreationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/CompleteMultipartUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 ArchiveSize => Str

The total size, in bytes, of the entire archive. This value should be
the sum of all the sizes of the individual parts that you uploaded.



=head2 Checksum => Str

The SHA256 tree hash of the entire archive. It is the tree hash of
SHA256 tree hash of the individual parts. If the value you specify in
the request does not match the SHA256 tree hash of the final assembled
archive as computed by Amazon Glacier, Amazon Glacier returns an error
and the request fails.



=head2 B<REQUIRED> UploadId => Str

The upload ID of the multipart upload.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMultipartUpload in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

