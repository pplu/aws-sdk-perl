
package Paws::MediaPackage::DescribeHarvestJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_S3Destination/;
  has Arn => (is => 'ro', isa => Str);
  has ChannelId => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has OriginEndpointId => (is => 'ro', isa => Str);
  has S3Destination => (is => 'ro', isa => MediaPackage_S3Destination);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OriginEndpointId' => {
                                       'type' => 'Str'
                                     },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'S3Destination' => {
                                    'type' => 'MediaPackage_S3Destination',
                                    'class' => 'Paws::MediaPackage::S3Destination'
                                  },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'ChannelId' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'EndTime' => 'endTime',
                       'S3Destination' => 's3Destination',
                       'StartTime' => 'startTime',
                       'Status' => 'status',
                       'OriginEndpointId' => 'originEndpointId',
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'CreatedAt' => 'createdAt',
                       'ChannelId' => 'channelId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DescribeHarvestJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the HarvestJob.


=head2 ChannelId => Str

The ID of the Channel that the HarvestJob will harvest from.


=head2 CreatedAt => Str

The time the HarvestJob was submitted


=head2 EndTime => Str

The end of the time-window which will be harvested.


=head2 Id => Str

The ID of the HarvestJob. The ID must be unique within the region and
it cannot be changed after the HarvestJob is submitted.


=head2 OriginEndpointId => Str

The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.


=head2 S3Destination => MediaPackage_S3Destination




=head2 StartTime => Str

The start of the time-window which will be harvested.


=head2 Status => Str

The current status of the HarvestJob. Consider setting up a CloudWatch
Event to listen for HarvestJobs as they succeed or fail. In the event
of failure, the CloudWatch Event will include an explanation of why the
HarvestJob failed.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

