
package Paws::Glacier::ListMultipartUploads;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Limit => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/multipart-uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListMultipartUploadsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListMultipartUploads - Arguments for method ListMultipartUploads on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultipartUploads on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method ListMultipartUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultipartUploads.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
   # To list all the in-progress multipart uploads for a vault
   # The example lists all the in-progress multipart uploads for the vault named
   # examplevault.
    my $ListMultipartUploadsOutput = $glacier->ListMultipartUploads(
      {
        'AccountId' => '-',
        'VaultName' => 'examplevault'
      }
    );

    # Results:
    my $Marker      = $ListMultipartUploadsOutput->Marker;
    my $UploadsList = $ListMultipartUploadsOutput->UploadsList;

    # Returns a L<Paws::Glacier::ListMultipartUploadsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/ListMultipartUploads>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Limit => Str

Specifies the maximum number of uploads returned in the response body.
If this value is not specified, the List Uploads operation returns up
to 50 uploads.



=head2 Marker => Str

An opaque string used for pagination. This value specifies the upload
at which the listing of uploads should begin. Get the marker value from
a previous List Uploads response. You need only include the marker if
you are continuing the pagination of results started in a previous List
Uploads request.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultipartUploads in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

