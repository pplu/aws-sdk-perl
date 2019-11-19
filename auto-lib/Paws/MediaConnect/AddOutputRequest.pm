# Generated from default/object.tt
package Paws::MediaConnect::AddOutputRequest;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::MediaConnect::Types qw/MediaConnect_Encryption/;
  has CidrAllowList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Description => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => Str);
  has Encryption => (is => 'ro', isa => MediaConnect_Encryption);
  has MaxLatency => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Int);
  has Protocol => (is => 'ro', isa => Str, required => 1);
  has RemoteId => (is => 'ro', isa => Str);
  has SmoothingLatency => (is => 'ro', isa => Int);
  has StreamId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxLatency' => {
                                 'type' => 'Int'
                               },
               'SmoothingLatency' => {
                                       'type' => 'Int'
                                     },
               'Encryption' => {
                                 'class' => 'Paws::MediaConnect::Encryption',
                                 'type' => 'MediaConnect_Encryption'
                               },
               'RemoteId' => {
                               'type' => 'Str'
                             },
               'Port' => {
                           'type' => 'Int'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CidrAllowList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'StreamId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'Protocol' => 1
                  },
  'NameInRequest' => {
                       'Port' => 'port',
                       'RemoteId' => 'remoteId',
                       'Encryption' => 'encryption',
                       'CidrAllowList' => 'cidrAllowList',
                       'Description' => 'description',
                       'SmoothingLatency' => 'smoothingLatency',
                       'MaxLatency' => 'maxLatency',
                       'StreamId' => 'streamId',
                       'Protocol' => 'protocol',
                       'Name' => 'name',
                       'Destination' => 'destination'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddOutputRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::AddOutputRequest object:

  $service_obj->Method(Att1 => { CidrAllowList => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::AddOutputRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrAllowList

=head1 DESCRIPTION

The output that you want to add to this flow.

=head1 ATTRIBUTES


=head2 CidrAllowList => ArrayRef[Str|Undef]

  The range of IP addresses that should be allowed to initiate output
requests to this flow. These IP addresses should be in the form of a
Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.


=head2 Description => Str

  A description of the output. This description appears only on the AWS
Elemental MediaConnect console and will not be seen by the end user.


=head2 Destination => Str

  The IP address from which video will be sent to output destinations.


=head2 Encryption => MediaConnect_Encryption

  The type of key used for the encryption. If no keyType is provided, the
service will use the default setting (static-key).


=head2 MaxLatency => Int

  The maximum latency in milliseconds for Zixi-based streams.


=head2 Name => Str

  The name of the output. This value must be unique within the current
flow.


=head2 Port => Int

  The port to use when content is distributed to this output.


=head2 B<REQUIRED> Protocol => Str

  The protocol to use for the output.


=head2 RemoteId => Str

  The remote ID for the Zixi-pull output stream.


=head2 SmoothingLatency => Int

  The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
streams.


=head2 StreamId => Str

  The stream ID that you want to use for this transport. This parameter
applies only to Zixi-based streams.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

