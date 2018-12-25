
package Paws::MediaLive::BatchUpdateSchedule;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);
  has Creates => (is => 'ro', isa => 'Paws::MediaLive::BatchScheduleActionCreateRequest', traits => ['NameInRequest'], request_name => 'creates');
  has Deletes => (is => 'ro', isa => 'Paws::MediaLive::BatchScheduleActionDeleteRequest', traits => ['NameInRequest'], request_name => 'deletes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::BatchUpdateScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchUpdateSchedule - Arguments for method BatchUpdateSchedule on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateSchedule on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method BatchUpdateSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateSchedule.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $BatchUpdateScheduleResponse = $medialive->BatchUpdateSchedule(
      ChannelId => 'My__string',
      Creates   => {
        ScheduleActions => [
          {
            ActionName             => 'My__string',
            ScheduleActionSettings => {
              HlsTimedMetadataSettings => {
                Id3 => 'My__string',

              },    # OPTIONAL
              InputSwitchSettings => {
                InputAttachmentNameReference => 'My__string',

              },    # OPTIONAL
              Scte35ReturnToNetworkSettings => {
                SpliceEventId => 1,    # max: 4294967295

              },    # OPTIONAL
              Scte35SpliceInsertSettings => {
                SpliceEventId => 1,    # max: 4294967295
                Duration      => 1,    # max: 8589934591; OPTIONAL
              },    # OPTIONAL
              Scte35TimeSignalSettings => {
                Scte35Descriptors => [
                  {
                    Scte35DescriptorSettings => {
                      SegmentationDescriptorScte35DescriptorSettings => {
                        SegmentationCancelIndicator =>
                          'SEGMENTATION_EVENT_NOT_CANCELED'
                        , # values: SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
                        SegmentationEventId  => 1,    # max: 4294967295
                        DeliveryRestrictions => {
                          ArchiveAllowedFlag => 'ARCHIVE_NOT_ALLOWED'
                          ,    # values: ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
                          DeviceRestrictions => 'NONE'
                          , # values: NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
                          NoRegionalBlackoutFlag => 'REGIONAL_BLACKOUT'
                          ,    # values: REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
                          WebDeliveryAllowedFlag => 'WEB_DELIVERY_NOT_ALLOWED'
                          , # values: WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED

                        },    # OPTIONAL
                        SegmentNum => 1,    # max: 255; OPTIONAL
                        SegmentationDuration =>
                          1,                # max: 1099511627775; OPTIONAL
                        SegmentationTypeId => 1,            # max: 255; OPTIONAL
                        SegmentationUpid   => 'My__string',
                        SegmentationUpidType => 1,          # max: 255; OPTIONAL
                        SegmentsExpected     => 1,          # max: 255; OPTIONAL
                        SubSegmentNum        => 1,          # max: 255; OPTIONAL
                        SubSegmentsExpected  => 1,          # max: 255; OPTIONAL
                      },

                    },

                  },
                  ...
                ],

              },    # OPTIONAL
              StaticImageActivateSettings => {
                Image => {
                  Uri           => 'My__string',
                  PasswordParam => 'My__string',
                  Username      => 'My__string',
                },
                Duration => 1,    # OPTIONAL
                FadeIn   => 1,    # OPTIONAL
                FadeOut  => 1,    # OPTIONAL
                Height   => 1,    # min: 1; OPTIONAL
                ImageX   => 1,    # OPTIONAL
                ImageY   => 1,    # OPTIONAL
                Layer    => 1,    # max: 7; OPTIONAL
                Opacity  => 1,    # max: 100; OPTIONAL
                Width    => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              StaticImageDeactivateSettings => {
                FadeOut => 1,    # OPTIONAL
                Layer   => 1,    # max: 7; OPTIONAL
              },    # OPTIONAL
            },
            ScheduleActionStartSettings => {
              FixedModeScheduleActionStartSettings => {
                Time => 'My__string',

              },    # OPTIONAL
              FollowModeScheduleActionStartSettings => {
                FollowPoint         => 'END',          # values: END, START
                ReferenceActionName => 'My__string',

              },    # OPTIONAL
            },

          },
          ...
        ],

      },    # OPTIONAL
      Deletes => {
        ActionNames => [ 'My__string', ... ],

      },    # OPTIONAL
    );

    # Results:
    my $Creates = $BatchUpdateScheduleResponse->Creates;
    my $Deletes = $BatchUpdateScheduleResponse->Deletes;

    # Returns a L<Paws::MediaLive::BatchUpdateScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/BatchUpdateSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

Id of the channel whose schedule is being updated.



=head2 Creates => L<Paws::MediaLive::BatchScheduleActionCreateRequest>

Schedule actions to create in the schedule.



=head2 Deletes => L<Paws::MediaLive::BatchScheduleActionDeleteRequest>

Schedule actions to delete from the schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateSchedule in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

