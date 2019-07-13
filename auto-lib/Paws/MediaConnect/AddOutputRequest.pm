package Paws::MediaConnect::AddOutputRequest;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::Encryption', request_name => 'encryption', traits => ['NameInRequest']);
  has MaxLatency => (is => 'ro', isa => 'Int', request_name => 'maxLatency', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest'], required => 1);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest'], required => 1);
  has SmoothingLatency => (is => 'ro', isa => 'Int', request_name => 'smoothingLatency', traits => ['NameInRequest']);
  has StreamId => (is => 'ro', isa => 'Str', request_name => 'streamId', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { Description => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::AddOutputRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The output that you want to add to this flow.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the output. This description appears only on the AWS
Elemental MediaConnect console and will not be seen by the end user.


=head2 B<REQUIRED> Destination => Str

  The IP address from which video will be sent to output destinations.


=head2 Encryption => L<Paws::MediaConnect::Encryption>

  The type of key used for the encryption. If no keyType is provided, the
service will use the default setting (static-key).


=head2 MaxLatency => Int

  The maximum latency in milliseconds for Zixi-based streams.


=head2 Name => Str

  The name of the output. This value must be unique within the current
flow.


=head2 B<REQUIRED> Port => Int

  The port to use when content is distributed to this output.


=head2 B<REQUIRED> Protocol => Str

  The protocol to use for the output.


=head2 SmoothingLatency => Int

  The smoothing latency in milliseconds for RTP and RTP-FEC streams.


=head2 StreamId => Str

  The stream ID that you want to use for this transport. This parameter
applies only to Zixi-based streams.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

