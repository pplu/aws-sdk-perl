
package Paws::Glacier::DescribeJob;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::GlacierJobDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::DescribeJob - Arguments for method DescribeJob on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJob on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method DescribeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJob.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To get information about a previously initiated job
    # The example returns information about the previously initiated job
    # specified by the job ID.
    my $GlacierJobDescription = $glacier->DescribeJob(
      {
        'AccountId' => '-',
        'JobId' =>
'zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4Cn',
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $Action       = $GlacierJobDescription->Action;
    my $Completed    = $GlacierJobDescription->Completed;
    my $CreationDate = $GlacierJobDescription->CreationDate;
    my $InventoryRetrievalParameters =
      $GlacierJobDescription->InventoryRetrievalParameters;
    my $JobId      = $GlacierJobDescription->JobId;
    my $StatusCode = $GlacierJobDescription->StatusCode;
    my $VaultARN   = $GlacierJobDescription->VaultARN;

    # Returns a L<Paws::Glacier::GlacierJobDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/DescribeJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 B<REQUIRED> JobId => Str

The ID of the job to describe.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJob in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

