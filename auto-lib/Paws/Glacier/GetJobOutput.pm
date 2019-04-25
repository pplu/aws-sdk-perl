
package Paws::Glacier::GetJobOutput;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has Range => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Range');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/jobs/{jobId}/output');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::GetJobOutputOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetJobOutput - Arguments for method GetJobOutput on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobOutput on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method GetJobOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobOutput.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To get the output of a previously initiated job
    # The example downloads the output of a previously initiated inventory
    # retrieval job that is identified by the job ID.
    my $GetJobOutputOutput = $glacier->GetJobOutput(
      {
        'AccountId' => '-',
        'JobId' =>
'zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW',
        'Range'     => '',
        'VaultName' => 'my-vaul'
      }
    );

    # Results:
    my $acceptRanges = $GetJobOutputOutput->acceptRanges;
    my $body         = $GetJobOutputOutput->body;
    my $contentType  = $GetJobOutputOutput->contentType;
    my $status       = $GetJobOutputOutput->status;

    # Returns a L<Paws::Glacier::GetJobOutputOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/GetJobOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 B<REQUIRED> JobId => Str

The job ID whose data is downloaded.



=head2 Range => Str

The range of bytes to retrieve from the output. For example, if you
want to download the first 1,048,576 bytes, specify the range as
C<bytes=0-1048575>. By default, this operation downloads the entire
output.

If the job output is large, then you can use a range to retrieve a
portion of the output. This allows you to download the entire output in
smaller chunks of bytes. For example, suppose you have 1 GB of job
output you want to download and you decide to download 128 MB chunks of
data at a time, which is a total of eight Get Job Output requests. You
use the following process to download the job output:

=over

=item 1.

Download a 128 MB chunk of output by specifying the appropriate byte
range. Verify that all 128 MB of data was received.

=item 2.

Along with the data, the response includes a SHA256 tree hash of the
payload. You compute the checksum of the payload on the client and
compare it with the checksum you received in the response to ensure you
received all the expected data.

=item 3.

Repeat steps 1 and 2 for all the eight 128 MB chunks of output data,
each time specifying the appropriate byte range.

=item 4.

After downloading all the parts of the job output, you have a list of
eight checksum values. Compute the tree hash of these values to find
the checksum of the entire output. Using the DescribeJob API, obtain
job information of the job that provided you the output. The response
includes the checksum of the entire archive stored in Amazon Glacier.
You compare this value with the checksum you computed to ensure you
have downloaded the entire archive content with no errors.

=back




=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobOutput in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

