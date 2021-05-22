
package Paws::SESv2::ListImportJobs;
  use Moose;
  has ImportDestinationType => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'PageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListImportJobs - Arguments for method ListImportJobs on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImportJobs on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImportJobs.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListImportJobsResponse = $email->ListImportJobs(
      ImportDestinationType => 'SUPPRESSION_LIST',    # OPTIONAL
      NextToken             => 'MyNextToken',         # OPTIONAL
      PageSize              => 1,                     # OPTIONAL
    );

    # Results:
    my $ImportJobs = $ListImportJobsResponse->ImportJobs;
    my $NextToken  = $ListImportJobsResponse->NextToken;

    # Returns a L<Paws::SESv2::ListImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListImportJobs>

=head1 ATTRIBUTES


=head2 ImportDestinationType => Str

The destination of the import job, which can be used to list import
jobs that have a certain C<ImportDestinationType>.

Valid values are: C<"SUPPRESSION_LIST">, C<"CONTACT_LIST">

=head2 NextToken => Str

A string token indicating that there might be additional import jobs
available to be listed. Copy this token to a subsequent call to
C<ListImportJobs> with the same parameters to retrieve the next page of
import jobs.



=head2 PageSize => Int

Maximum number of import jobs to return at once. Use this parameter to
paginate results. If additional import jobs exist beyond the specified
limit, the C<NextToken> element is sent in the response. Use the
C<NextToken> value in subsequent requests to retrieve additional
addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImportJobs in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

