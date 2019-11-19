# Generated from default/object.tt
package Paws::IoTAnalytics::Channel;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod IoTAnalytics_ChannelStorage/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);
  has Status => (is => 'ro', isa => Str);
  has Storage => (is => 'ro', isa => IoTAnalytics_ChannelStorage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Storage' => {
                              'type' => 'IoTAnalytics_ChannelStorage',
                              'class' => 'Paws::IoTAnalytics::ChannelStorage'
                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'Arn' => 'arn',
                       'Status' => 'status',
                       'Storage' => 'storage',
                       'CreationTime' => 'creationTime',
                       'RetentionPeriod' => 'retentionPeriod'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Channel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Channel object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Storage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Channel object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A collection of data from an MQTT topic. Channels archive the raw,
unprocessed messages before publishing the data to a pipeline.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the channel.


=head2 CreationTime => Str

  When the channel was created.


=head2 LastUpdateTime => Str

  When the channel was last updated.


=head2 Name => Str

  The name of the channel.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

  How long, in days, message data is kept for the channel.


=head2 Status => Str

  The status of the channel.


=head2 Storage => IoTAnalytics_ChannelStorage

  Where channel data is stored. You may choose one of "serviceManagedS3"
or "customerManagedS3" storage. If not specified, the default is
"serviceManagedS3". This cannot be changed after creation of the
channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

