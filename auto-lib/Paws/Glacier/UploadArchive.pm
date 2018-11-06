
package Paws::Glacier::UploadArchive;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ArchiveDescription => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-archive-description');
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sha256-tree-hash');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadArchive');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/archives');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ArchiveCreationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::UploadArchive - Arguments for method UploadArchive on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadArchive on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method UploadArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadArchive.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To upload an archive
    # The example adds an archive to a vault.
    my $ArchiveCreationOutput = $glacier->UploadArchive(
      {
        'AccountId'          => '-',
        'ArchiveDescription' => '',
        'Body'               => 'example-data-to-upload',
        'Checksum'           => '',
        'VaultName'          => 'my-vault'
      }
    );

    # Results:
    my $archiveId = $ArchiveCreationOutput->archiveId;
    my $checksum  = $ArchiveCreationOutput->checksum;
    my $location  = $ArchiveCreationOutput->location;

    # Returns a L<Paws::Glacier::ArchiveCreationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/UploadArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 ArchiveDescription => Str

The optional description of the archive you are uploading.



=head2 Body => Str

The data to upload.



=head2 Checksum => Str

The SHA256 tree hash of the data being uploaded.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadArchive in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

