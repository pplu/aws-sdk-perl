package Paws::Lightsail::InstancePortInfo;
  use Moose;
  has AccessDirection => (is => 'ro', isa => 'Str', xmlname => 'accessDirection', request_name => 'accessDirection', traits => ['Unwrapped','NameInRequest']);
  has AccessFrom => (is => 'ro', isa => 'Str', xmlname => 'accessFrom', request_name => 'accessFrom', traits => ['Unwrapped','NameInRequest']);
  has AccessType => (is => 'ro', isa => 'Str', xmlname => 'accessType', request_name => 'accessType', traits => ['Unwrapped','NameInRequest']);
  has CommonName => (is => 'ro', isa => 'Str', xmlname => 'commonName', request_name => 'commonName', traits => ['Unwrapped','NameInRequest']);
  has FromPort => (is => 'ro', isa => 'Int', xmlname => 'fromPort', request_name => 'fromPort', traits => ['Unwrapped','NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', xmlname => 'protocol', request_name => 'protocol', traits => ['Unwrapped','NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', xmlname => 'toPort', request_name => 'toPort', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstancePortInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstancePortInfo object:

  $service_obj->Method(Att1 => { AccessDirection => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstancePortInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessDirection

=head1 DESCRIPTION

Describes information about the instance ports.

=head1 ATTRIBUTES


=head2 AccessDirection => Str

  The access direction (C<inbound> or C<outbound>).


=head2 AccessFrom => Str

  The location from which access is allowed (e.g., C<Anywhere
(0.0.0.0/0)>).


=head2 AccessType => Str

  The type of access (C<Public> or C<Private>).


=head2 CommonName => Str

  The common name.


=head2 FromPort => Int

  The first port in the range.


=head2 Protocol => Str

  The protocol.


=head2 ToPort => Int

  The last port in the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

