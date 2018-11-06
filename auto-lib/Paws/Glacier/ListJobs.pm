
package Paws::Glacier::ListJobs;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Completed => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'completed');
  has Limit => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has Statuscode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statuscode');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListJobs - Arguments for method ListJobs on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To list jobs for a vault
    # The example lists jobs for the vault named my-vault.
    my $ListJobsOutput = $glacier->ListJobs(
      {
        'AccountId' => '-',
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $JobList = $ListJobsOutput->JobList;

    # Returns a L<Paws::Glacier::ListJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/ListJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Completed => Str

The state of the jobs to return. You can specify C<true> or C<false>.



=head2 Limit => Str

The maximum number of jobs to be returned. The default limit is 50. The
number of jobs returned might be fewer than the specified limit, but
the number of returned jobs never exceeds the limit.



=head2 Marker => Str

An opaque string used for pagination. This value specifies the job at
which the listing of jobs should begin. Get the marker value from a
previous List Jobs response. You only need to include the marker if you
are continuing the pagination of results started in a previous List
Jobs request.



=head2 Statuscode => Str

The type of job status to return. You can specify the following values:
C<InProgress>, C<Succeeded>, or C<Failed>.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

