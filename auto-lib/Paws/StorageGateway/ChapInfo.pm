package Paws::StorageGateway::ChapInfo;
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ChapInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::ChapInfo object:

  $service_obj->Method(Att1 => { InitiatorName => $value, ..., TargetARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::ChapInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->InitiatorName

=head1 DESCRIPTION

Describes Challenge-Handshake Authentication Protocol (CHAP)
information that supports authentication between your gateway and iSCSI
initiators.

=head1 ATTRIBUTES


=head2 InitiatorName => Str

  The iSCSI initiator that connects to the target.


=head2 SecretToAuthenticateInitiator => Str

  The secret key that the initiator (for example, the Windows client)
must provide to participate in mutual CHAP with the target.


=head2 SecretToAuthenticateTarget => Str

  The secret key that the target must provide to participate in mutual
CHAP with the initiator (e.g. Windows client).


=head2 TargetARN => Str

  The Amazon Resource Name (ARN) of the volume.

Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
hyphens (-).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

