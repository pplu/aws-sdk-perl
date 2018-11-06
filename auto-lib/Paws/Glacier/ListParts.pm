
package Paws::Glacier::ListParts;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Limit => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListPartsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListParts - Arguments for method ListParts on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListParts on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method ListParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListParts.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
 # To list the parts of an archive that have been uploaded in a multipart upload
 # The example lists all the parts of a multipart upload.
    my $ListPartsOutput = $glacier->ListParts(
      {
        'AccountId' => '-',
        'UploadId' =>
'OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE',
        'VaultName' => 'examplevault'
      }
    );

    # Results:
    my $ArchiveDescription = $ListPartsOutput->ArchiveDescription;
    my $CreationDate       = $ListPartsOutput->CreationDate;
    my $Marker             = $ListPartsOutput->Marker;
    my $MultipartUploadId  = $ListPartsOutput->MultipartUploadId;
    my $PartSizeInBytes    = $ListPartsOutput->PartSizeInBytes;
    my $Parts              = $ListPartsOutput->Parts;
    my $VaultARN           = $ListPartsOutput->VaultARN;

    # Returns a L<Paws::Glacier::ListPartsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/ListParts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Limit => Str

The maximum number of parts to be returned. The default limit is 50.
The number of parts returned might be fewer than the specified limit,
but the number of returned parts never exceeds the limit.



=head2 Marker => Str

An opaque string used for pagination. This value specifies the part at
which the listing of parts should begin. Get the marker value from the
response of a previous List Parts response. You need only include the
marker if you are continuing the pagination of results started in a
previous List Parts request.



=head2 B<REQUIRED> UploadId => Str

The upload ID of the multipart upload.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListParts in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

