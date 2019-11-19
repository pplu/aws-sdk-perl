# Generated from default/object.tt
package Paws::IoTAnalytics::ChannelSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_ChannelStorageSummary/;
  has ChannelName => (is => 'ro', isa => Str);
  has ChannelStorage => (is => 'ro', isa => IoTAnalytics_ChannelStorageSummary);
  has CreationTime => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ChannelStorage' => {
                                     'type' => 'IoTAnalytics_ChannelStorageSummary',
                                     'class' => 'Paws::IoTAnalytics::ChannelStorageSummary'
                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'ChannelName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LastUpdateTime' => 'lastUpdateTime',
                       'CreationTime' => 'creationTime',
                       'Status' => 'status',
                       'ChannelName' => 'channelName',
                       'ChannelStorage' => 'channelStorage'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ChannelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::ChannelSummary object:

  $service_obj->Method(Att1 => { ChannelName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::ChannelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelName

=head1 DESCRIPTION

A summary of information about a channel.

=head1 ATTRIBUTES


=head2 ChannelName => Str

  The name of the channel.


=head2 ChannelStorage => IoTAnalytics_ChannelStorageSummary

  Where channel data is stored.


=head2 CreationTime => Str

  When the channel was created.


=head2 LastUpdateTime => Str

  The last time the channel was updated.


=head2 Status => Str

  The status of the channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

