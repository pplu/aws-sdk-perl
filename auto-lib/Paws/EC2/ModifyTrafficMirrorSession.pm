
package Paws::EC2::ModifyTrafficMirrorSession;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PacketLength => (is => 'ro', isa => 'Int');
  has RemoveFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RemoveField' );
  has SessionNumber => (is => 'ro', isa => 'Int');
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str');
  has TrafficMirrorSessionId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficMirrorTargetId => (is => 'ro', isa => 'Str');
  has VirtualNetworkId => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTrafficMirrorSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyTrafficMirrorSessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorSession - Arguments for method ModifyTrafficMirrorSession on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTrafficMirrorSession on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyTrafficMirrorSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTrafficMirrorSession.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyTrafficMirrorSessionResult = $ec2->ModifyTrafficMirrorSession(
      TrafficMirrorSessionId => 'MyString',
      Description            => 'MyString',    # OPTIONAL
      DryRun                 => 1,             # OPTIONAL
      PacketLength           => 1,             # OPTIONAL
      RemoveFields           => [
        'packet-length',
        ...    # values: packet-length, description, virtual-network-id
      ],       # OPTIONAL
      SessionNumber         => 1,             # OPTIONAL
      TrafficMirrorFilterId => 'MyString',    # OPTIONAL
      TrafficMirrorTargetId => 'MyString',    # OPTIONAL
      VirtualNetworkId      => 1,             # OPTIONAL
    );

    # Results:
    my $TrafficMirrorSession =
      $ModifyTrafficMirrorSessionResult->TrafficMirrorSession;

    # Returns a L<Paws::EC2::ModifyTrafficMirrorSessionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyTrafficMirrorSession>

=head1 ATTRIBUTES


=head2 Description => Str

The description to assign to the Traffic Mirror session.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PacketLength => Int

The number of bytes in each packet to mirror. These are bytes after the
VXLAN header. To mirror a subset, set this to the length (in bytes) to
mirror. For example, if you set this value to 100, then the first 100
bytes that meet the filter criteria are copied to the target. Do not
specify this parameter when you want to mirror the entire packet.



=head2 RemoveFields => ArrayRef[Str|Undef]

The properties that you want to remove from the Traffic Mirror session.

When you remove a property from a Traffic Mirror session, the property
is set to the default.



=head2 SessionNumber => Int

The session number determines the order in which sessions are evaluated
when an interface is used by multiple sessions. The first session with
a matching filter is the one that mirrors the packets.

Valid values are 1-32766.



=head2 TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.



=head2 B<REQUIRED> TrafficMirrorSessionId => Str

The ID of the Traffic Mirror session.



=head2 TrafficMirrorTargetId => Str

The Traffic Mirror target. The target must be in the same VPC as the
source, or have a VPC peering connection with the source.



=head2 VirtualNetworkId => Int

The virtual network ID of the Traffic Mirror session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTrafficMirrorSession in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

