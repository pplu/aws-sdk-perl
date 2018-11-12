
package Paws::Signer::ListSigningJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'platformId');
  has RequestedBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'requestedBy');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::ListSigningJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningJobs - Arguments for method ListSigningJobs on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSigningJobs on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method ListSigningJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSigningJobs.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $ListSigningJobsResponse = $signer->ListSigningJobs(
      MaxResults  => 1,                  # OPTIONAL
      NextToken   => 'MyNextToken',      # OPTIONAL
      PlatformId  => 'MyPlatformId',     # OPTIONAL
      RequestedBy => 'MyRequestedBy',    # OPTIONAL
      Status      => 'InProgress',       # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListSigningJobsResponse->Jobs;
    my $NextToken = $ListSigningJobsResponse->NextToken;

    # Returns a L<Paws::Signer::ListSigningJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/ListSigningJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of items to return in the response. Use
this parameter when paginating results. If additional items exist
beyond the number you specify, the C<nextToken> element is set in the
response. Use the C<nextToken> value in a subsequent request to
retrieve additional items.



=head2 NextToken => Str

String for specifying the next set of paginated results to return.
After you receive a response with truncated results, use this parameter
in a subsequent request. Set it to the value of C<nextToken> from the
response that you just received.



=head2 PlatformId => Str

The ID of microcontroller platform that you specified for the
distribution of your code image.



=head2 RequestedBy => Str

The IAM principal that requested the signing job.



=head2 Status => Str

A status value with which to filter your results.

Valid values are: C<"InProgress">, C<"Failed">, C<"Succeeded">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSigningJobs in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

