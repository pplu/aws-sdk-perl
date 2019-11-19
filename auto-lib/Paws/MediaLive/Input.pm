# Generated from default/object.tt
package Paws::MediaLive::Input;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_MediaConnectFlow MediaLive_InputSource MediaLive_InputDestination MediaLive_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has AttachedChannels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_InputDestination]);
  has Id => (is => 'ro', isa => Str);
  has InputClass => (is => 'ro', isa => Str);
  has InputSourceType => (is => 'ro', isa => Str);
  has MediaConnectFlows => (is => 'ro', isa => ArrayRef[MediaLive_MediaConnectFlow]);
  has Name => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Sources => (is => 'ro', isa => ArrayRef[MediaLive_InputSource]);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destinations' => {
                                   'type' => 'ArrayRef[MediaLive_InputDestination]',
                                   'class' => 'Paws::MediaLive::InputDestination'
                                 },
               'Tags' => {
                           'type' => 'MediaLive_Tags',
                           'class' => 'Paws::MediaLive::Tags'
                         },
               'AttachedChannels' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'InputClass' => {
                                 'type' => 'Str'
                               },
               'Sources' => {
                              'type' => 'ArrayRef[MediaLive_InputSource]',
                              'class' => 'Paws::MediaLive::InputSource'
                            },
               'MediaConnectFlows' => {
                                        'class' => 'Paws::MediaLive::MediaConnectFlow',
                                        'type' => 'ArrayRef[MediaLive_MediaConnectFlow]'
                                      },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Type' => {
                           'type' => 'Str'
                         },
               'InputSourceType' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Sources' => 'sources',
                       'Type' => 'type',
                       'RoleArn' => 'roleArn',
                       'MediaConnectFlows' => 'mediaConnectFlows',
                       'AttachedChannels' => 'attachedChannels',
                       'Tags' => 'tags',
                       'Destinations' => 'destinations',
                       'InputClass' => 'inputClass',
                       'Arn' => 'arn',
                       'Id' => 'id',
                       'SecurityGroups' => 'securityGroups',
                       'InputSourceType' => 'inputSourceType',
                       'State' => 'state',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Input object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Placeholder documentation for Input

=head1 ATTRIBUTES


=head2 Arn => Str

  The Unique ARN of the input (generated, immutable).


=head2 AttachedChannels => ArrayRef[Str|Undef]

  A list of channel IDs that that input is attached to (currently an
input can only be attached to one channel).


=head2 Destinations => ArrayRef[MediaLive_InputDestination]

  A list of the destinations of the input (PUSH-type).


=head2 Id => Str

  The generated ID of the input (unique for user account, immutable).


=head2 InputClass => Str

  STANDARD - MediaLive expects two sources to be connected to this input.
If the channel is also STANDARD, both sources will be ingested. If the
channel is SINGLE_PIPELINE, only the first source will be ingested; the
second source will always be ignored, even if the first source fails.
SINGLE_PIPELINE - You can connect only one source to this input. If the
ChannelClass is also SINGLE_PIPELINE, this value is valid. If the
ChannelClass is STANDARD, this value is not valid because the channel
requires two sources in the input.


=head2 InputSourceType => Str

  Certain pull input sources can be dynamic, meaning that they can have
their URL's dynamically changes during input switch actions. Presently,
this functionality only works with MP4_FILE inputs.


=head2 MediaConnectFlows => ArrayRef[MediaLive_MediaConnectFlow]

  A list of MediaConnect Flows for this input.


=head2 Name => Str

  The user-assigned name (This is a mutable value).


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  A list of IDs for all the Input Security Groups attached to the input.


=head2 Sources => ArrayRef[MediaLive_InputSource]

  A list of the sources of the input (PULL-type).


=head2 State => Str

  


=head2 Tags => MediaLive_Tags

  A collection of key-value pairs.


=head2 Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

