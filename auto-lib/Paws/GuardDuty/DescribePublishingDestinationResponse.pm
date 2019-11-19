
package Paws::GuardDuty::DescribePublishingDestinationResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw/GuardDuty_DestinationProperties/;
  has DestinationId => (is => 'ro', isa => Str, required => 1);
  has DestinationProperties => (is => 'ro', isa => GuardDuty_DestinationProperties, required => 1);
  has DestinationType => (is => 'ro', isa => Str, required => 1);
  has PublishingFailureStartTimestamp => (is => 'ro', isa => Int, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'DestinationProperties' => 'destinationProperties',
                       'DestinationType' => 'destinationType',
                       'PublishingFailureStartTimestamp' => 'publishingFailureStartTimestamp',
                       'DestinationId' => 'destinationId'
                     },
  'IsRequired' => {
                    'PublishingFailureStartTimestamp' => 1,
                    'DestinationId' => 1,
                    'Status' => 1,
                    'DestinationProperties' => 1,
                    'DestinationType' => 1
                  },
  'types' => {
               'DestinationType' => {
                                      'type' => 'Str'
                                    },
               'PublishingFailureStartTimestamp' => {
                                                      'type' => 'Int'
                                                    },
               'DestinationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DestinationProperties' => {
                                            'type' => 'GuardDuty_DestinationProperties',
                                            'class' => 'Paws::GuardDuty::DestinationProperties'
                                          },
               'Status' => {
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

Paws::GuardDuty::DescribePublishingDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination.


=head2 B<REQUIRED> DestinationProperties => GuardDuty_DestinationProperties

A C<DestinationProperties> object that includes the C<DestinationArn>
and C<KmsKeyArn> of the publishing destination.


=head2 B<REQUIRED> DestinationType => Str

The type of the publishing destination. Currently, only S3 is
supported.

Valid values are: C<"S3">
=head2 B<REQUIRED> PublishingFailureStartTimestamp => Int

The time, in epoch millisecond format, at which GuardDuty was first
unable to publish findings to the destination.


=head2 B<REQUIRED> Status => Str

The status of the publishing destination.

Valid values are: C<"PENDING_VERIFICATION">, C<"PUBLISHING">, C<"UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY">, C<"STOPPED">
=head2 _request_id => Str


=cut

