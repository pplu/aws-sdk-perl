
package Paws::Pinpoint::GetExportJobs;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has Token => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/jobs/export');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetExportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetExportJobs - Arguments for method GetExportJobs on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExportJobs on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExportJobs.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetExportJobsResponse = $pinpoint->GetExportJobs(
      ApplicationId => 'My__string',
      PageSize      => 'My__string',    # OPTIONAL
      Token         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ExportJobsResponse = $GetExportJobsResponse->ExportJobsResponse;

    # Returns a L<Paws::Pinpoint::GetExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetExportJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 PageSize => Str

The number of entries you want on each page in the response.



=head2 Token => Str

The NextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExportJobs in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

