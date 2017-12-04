
package Paws::Pinpoint::GetSegmentImportJobs;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has SegmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment-id', required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegmentImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/segments/{segment-id}/jobs/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetSegmentImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentImportJobs - Arguments for method GetSegmentImportJobs on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentImportJobs on the 
Amazon Pinpoint service. Use the attributes of this class
as arguments to method GetSegmentImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentImportJobs.

As an example:

  $service_obj->GetSegmentImportJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 PageSize => Str

The number of entries you want on each page in the response.



=head2 B<REQUIRED> SegmentId => Str





=head2 Token => Str

The NextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentImportJobs in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

