# Generated from default/object.tt
package Paws::MediaLive::ChannelSummary;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MediaLive::Types qw/MediaLive_InputAttachment MediaLive_ChannelEgressEndpoint MediaLive_OutputDestination MediaLive_Tags MediaLive_InputSpecification/;
  has Arn => (is => 'ro', isa => Str);
  has ChannelClass => (is => 'ro', isa => Str);
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_OutputDestination]);
  has EgressEndpoints => (is => 'ro', isa => ArrayRef[MediaLive_ChannelEgressEndpoint]);
  has Id => (is => 'ro', isa => Str);
  has InputAttachments => (is => 'ro', isa => ArrayRef[MediaLive_InputAttachment]);
  has InputSpecification => (is => 'ro', isa => MediaLive_InputSpecification);
  has LogLevel => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has PipelinesRunningCount => (is => 'ro', isa => Int);
  has RoleArn => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'InputSpecification' => {
                                         'class' => 'Paws::MediaLive::InputSpecification',
                                         'type' => 'MediaLive_InputSpecification'
                                       },
               'State' => {
                            'type' => 'Str'
                          },
               'LogLevel' => {
                               'type' => 'Str'
                             },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ChannelClass' => {
                                   'type' => 'Str'
                                 },
               'EgressEndpoints' => {
                                      'class' => 'Paws::MediaLive::ChannelEgressEndpoint',
                                      'type' => 'ArrayRef[MediaLive_ChannelEgressEndpoint]'
                                    },
               'Destinations' => {
                                   'class' => 'Paws::MediaLive::OutputDestination',
                                   'type' => 'ArrayRef[MediaLive_OutputDestination]'
                                 },
               'PipelinesRunningCount' => {
                                            'type' => 'Int'
                                          },
               'Arn' => {
                          'type' => 'Str'
                        },
               'InputAttachments' => {
                                       'class' => 'Paws::MediaLive::InputAttachment',
                                       'type' => 'ArrayRef[MediaLive_InputAttachment]'
                                     },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'InputSpecification' => 'inputSpecification',
                       'State' => 'state',
                       'LogLevel' => 'logLevel',
                       'RoleArn' => 'roleArn',
                       'ChannelClass' => 'channelClass',
                       'EgressEndpoints' => 'egressEndpoints',
                       'Destinations' => 'destinations',
                       'PipelinesRunningCount' => 'pipelinesRunningCount',
                       'Arn' => 'arn',
                       'InputAttachments' => 'inputAttachments',
                       'Tags' => 'tags',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ChannelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ChannelSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ChannelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Placeholder documentation for ChannelSummary

=head1 ATTRIBUTES


=head2 Arn => Str

  The unique arn of the channel.


=head2 ChannelClass => Str

  The class for this channel. STANDARD for a channel with two pipelines
or SINGLE_PIPELINE for a channel with one pipeline.


=head2 Destinations => ArrayRef[MediaLive_OutputDestination]

  A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.


=head2 EgressEndpoints => ArrayRef[MediaLive_ChannelEgressEndpoint]

  The endpoints where outgoing connections initiate from


=head2 Id => Str

  The unique id of the channel.


=head2 InputAttachments => ArrayRef[MediaLive_InputAttachment]

  List of input attachments for channel.


=head2 InputSpecification => MediaLive_InputSpecification

  


=head2 LogLevel => Str

  The log level being written to CloudWatch Logs.


=head2 Name => Str

  The name of the channel. (user-mutable)


=head2 PipelinesRunningCount => Int

  The number of currently healthy pipelines.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the role assumed when running the
Channel.


=head2 State => Str

  


=head2 Tags => MediaLive_Tags

  A collection of key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

