
package Paws::MediaPackage::ListHarvestJobsResponse;
  use Moose;
  has HarvestJobs => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackage::HarvestJob]', traits => ['NameInRequest'], request_name => 'harvestJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListHarvestJobsResponse

=head1 ATTRIBUTES


=head2 HarvestJobs => ArrayRef[L<Paws::MediaPackage::HarvestJob>]

A list of HarvestJob records.


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 _request_id => Str


=cut

