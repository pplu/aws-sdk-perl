
package Paws::MediaPackage::ListHarvestJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackage::Types qw/MediaPackage_HarvestJob/;
  has HarvestJobs => (is => 'ro', isa => ArrayRef[MediaPackage_HarvestJob]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HarvestJobs' => 'harvestJobs',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'HarvestJobs' => {
                                  'type' => 'ArrayRef[MediaPackage_HarvestJob]',
                                  'class' => 'Paws::MediaPackage::HarvestJob'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListHarvestJobsResponse

=head1 ATTRIBUTES


=head2 HarvestJobs => ArrayRef[MediaPackage_HarvestJob]

A list of HarvestJob records.


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 _request_id => Str


=cut

