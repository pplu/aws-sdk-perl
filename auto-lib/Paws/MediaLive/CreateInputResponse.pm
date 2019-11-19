
package Paws::MediaLive::CreateInputResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_Tags MediaLive_InputDestinationRequest MediaLive_MediaConnectFlowRequest MediaLive_InputVpcRequest MediaLive_InputSourceRequest/;
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_InputDestinationRequest]);
  has InputSecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has MediaConnectFlows => (is => 'ro', isa => ArrayRef[MediaLive_MediaConnectFlowRequest]);
  has Name => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has Sources => (is => 'ro', isa => ArrayRef[MediaLive_InputSourceRequest]);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has Type => (is => 'ro', isa => Str);
  has Vpc => (is => 'ro', isa => MediaLive_InputVpcRequest);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Vpc' => 'vpc',
                       'InputSecurityGroups' => 'inputSecurityGroups',
                       'Destinations' => 'destinations',
                       'Name' => 'name',
                       'RequestId' => 'requestId',
                       'Sources' => 'sources',
                       'Type' => 'type',
                       'RoleArn' => 'roleArn',
                       'MediaConnectFlows' => 'mediaConnectFlows'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InputSecurityGroups' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Sources' => {
                              'class' => 'Paws::MediaLive::InputSourceRequest',
                              'type' => 'ArrayRef[MediaLive_InputSourceRequest]'
                            },
               'Type' => {
                           'type' => 'Str'
                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'MediaConnectFlows' => {
                                        'type' => 'ArrayRef[MediaLive_MediaConnectFlowRequest]',
                                        'class' => 'Paws::MediaLive::MediaConnectFlowRequest'
                                      },
               'Vpc' => {
                          'type' => 'MediaLive_InputVpcRequest',
                          'class' => 'Paws::MediaLive::InputVpcRequest'
                        },
               'Tags' => {
                           'type' => 'MediaLive_Tags',
                           'class' => 'Paws::MediaLive::Tags'
                         },
               'Destinations' => {
                                   'type' => 'ArrayRef[MediaLive_InputDestinationRequest]',
                                   'class' => 'Paws::MediaLive::InputDestinationRequest'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInputResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[MediaLive_InputDestinationRequest]

Destination settings for PUSH type inputs.


=head2 InputSecurityGroups => ArrayRef[Str|Undef]

A list of security groups referenced by IDs to attach to the input.


=head2 MediaConnectFlows => ArrayRef[MediaLive_MediaConnectFlowRequest]

A list of the MediaConnect Flows that you want to use in this input.
You can specify as few as one Flow and presently, as many as two. The
only requirement is when you have more than one is that each Flow is in
a separate Availability Zone as this ensures your EML input is
redundant to AZ issues.


=head2 Name => Str

Name of the input.


=head2 RequestId => Str

Unique identifier of the request to ensure the request is handled
exactly once in case of retries.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.


=head2 Sources => ArrayRef[MediaLive_InputSourceRequest]

The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.


=head2 Tags => MediaLive_Tags

A collection of key-value pairs.


=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">, C<"MP4_FILE">, C<"MEDIACONNECT">
=head2 Vpc => MediaLive_InputVpcRequest




=head2 _request_id => Str


=cut

