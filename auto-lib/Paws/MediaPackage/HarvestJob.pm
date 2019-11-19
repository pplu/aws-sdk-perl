# Generated from default/object.tt
package Paws::MediaPackage::HarvestJob;
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

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'S3Destination' => 's3Destination',
                       'Status' => 'status',
                       'StartTime' => 'startTime',
                       'EndTime' => 'endTime',
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'OriginEndpointId' => 'originEndpointId',
                       'ChannelId' => 'channelId',
                       'CreatedAt' => 'createdAt'
                     },
  'types' => {
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'ChannelId' => {
                                'type' => 'Str'
                              },
               'OriginEndpointId' => {
                                       'type' => 'Str'
                                     },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'S3Destination' => {
                                    'type' => 'MediaPackage_S3Destination',
                                    'class' => 'Paws::MediaPackage::S3Destination'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartTime' => {
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

Paws::MediaPackage::HarvestJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HarvestJob object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HarvestJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A HarvestJob resource configuration

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

