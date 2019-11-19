# Generated from default/object.tt
package Paws::MediaConnect::Transport;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::MediaConnect::Types qw//;
  has CidrAllowList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has MaxBitrate => (is => 'ro', isa => Int);
  has MaxLatency => (is => 'ro', isa => Int);
  has Protocol => (is => 'ro', isa => Str, required => 1);
  has RemoteId => (is => 'ro', isa => Str);
  has SmoothingLatency => (is => 'ro', isa => Int);
  has StreamId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemoteId' => {
                               'type' => 'Str'
                             },
               'StreamId' => {
                               'type' => 'Str'
                             },
               'CidrAllowList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'SmoothingLatency' => {
                                       'type' => 'Int'
                                     },
               'MaxLatency' => {
                                 'type' => 'Int'
                               },
               'MaxBitrate' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'CidrAllowList' => 'cidrAllowList',
                       'StreamId' => 'streamId',
                       'RemoteId' => 'remoteId',
                       'MaxBitrate' => 'maxBitrate',
                       'SmoothingLatency' => 'smoothingLatency',
                       'Protocol' => 'protocol',
                       'MaxLatency' => 'maxLatency'
                     },
  'IsRequired' => {
                    'Protocol' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Transport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Transport object:

  $service_obj->Method(Att1 => { CidrAllowList => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Transport object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrAllowList

=head1 DESCRIPTION

Attributes related to the transport stream that are used in a source or
output.

=head1 ATTRIBUTES


=head2 CidrAllowList => ArrayRef[Str|Undef]

  The range of IP addresses that should be allowed to initiate output
requests to this flow. These IP addresses should be in the form of a
Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.


=head2 MaxBitrate => Int

  The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.


=head2 MaxLatency => Int

  The maximum latency in milliseconds. This parameter applies only to
RIST-based and Zixi-based streams.


=head2 B<REQUIRED> Protocol => Str

  The protocol that is used by the source or output.


=head2 RemoteId => Str

  The remote ID for the Zixi-pull stream.


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

