# Generated from json/callresult_class.tt

package Paws::PerformanceInsights::DescribeDimensionKeysResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PerformanceInsights::Types qw/PerformanceInsights_ResponsePartitionKey PerformanceInsights_DimensionKeyDescription/;
  has AlignedEndTime => (is => 'ro', isa => Str);
  has AlignedStartTime => (is => 'ro', isa => Str);
  has Keys => (is => 'ro', isa => ArrayRef[PerformanceInsights_DimensionKeyDescription]);
  has NextToken => (is => 'ro', isa => Str);
  has PartitionKeys => (is => 'ro', isa => ArrayRef[PerformanceInsights_ResponsePartitionKey]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AlignedStartTime' => {
                                       'type' => 'Str'
                                     },
               'AlignedEndTime' => {
                                     'type' => 'Str'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PartitionKeys' => {
                                    'class' => 'Paws::PerformanceInsights::ResponsePartitionKey',
                                    'type' => 'ArrayRef[PerformanceInsights_ResponsePartitionKey]'
                                  },
               'Keys' => {
                           'class' => 'Paws::PerformanceInsights::DimensionKeyDescription',
                           'type' => 'ArrayRef[PerformanceInsights_DimensionKeyDescription]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DescribeDimensionKeysResponse

=head1 ATTRIBUTES


=head2 AlignedEndTime => Str

The end time for the returned dimension keys, after alignment to a
granular boundary (as specified by C<PeriodInSeconds>).
C<AlignedEndTime> will be greater than or equal to the value of the
user-specified C<Endtime>.


=head2 AlignedStartTime => Str

The start time for the returned dimension keys, after alignment to a
granular boundary (as specified by C<PeriodInSeconds>).
C<AlignedStartTime> will be less than or equal to the value of the
user-specified C<StartTime>.


=head2 Keys => ArrayRef[PerformanceInsights_DimensionKeyDescription]

The dimension keys that were requested.


=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.


=head2 PartitionKeys => ArrayRef[PerformanceInsights_ResponsePartitionKey]

If C<PartitionBy> was present in the request, C<PartitionKeys> contains
the breakdown of dimension keys by the specified partitions.


=head2 _request_id => Str


=cut

1;