
package Paws::Glacier::InitiateJob;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has JobParameters => (is => 'ro', isa => 'Paws::Glacier::JobParameters', traits => ['NameInRequest'], request_name => 'jobParameters');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JobParameters');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::InitiateJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateJob - Arguments for method InitiateJob on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateJob on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method InitiateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateJob.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To initiate an inventory-retrieval job
    # The example initiates an inventory-retrieval job for the vault named
    # examplevault.
    my $InitiateJobOutput = $glacier->InitiateJob(
      {
        'AccountId'     => '-',
        'JobParameters' => {
          'Description' => 'My inventory job',
          'Format'      => 'CSV',
          'SNSTopic' =>
'arn:aws:sns:us-west-2:111111111111:Glacier-InventoryRetrieval-topic-Example',
          'Type' => 'inventory-retrieval'
        },
        'VaultName' => 'examplevault'
      }
    );

    # Results:
    my $jobId    = $InitiateJobOutput->jobId;
    my $location = $InitiateJobOutput->location;

    # Returns a L<Paws::Glacier::InitiateJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/InitiateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 JobParameters => L<Paws::Glacier::JobParameters>

Provides options for specifying job information.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateJob in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

