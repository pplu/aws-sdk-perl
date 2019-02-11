package Paws::SMS::Connector;
  use Moose;
  has AssociatedOn => (is => 'ro', isa => 'Str', request_name => 'associatedOn', traits => ['NameInRequest']);
  has CapabilityList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'capabilityList', traits => ['NameInRequest']);
  has ConnectorId => (is => 'ro', isa => 'Str', request_name => 'connectorId', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
  has VmManagerId => (is => 'ro', isa => 'Str', request_name => 'vmManagerId', traits => ['NameInRequest']);
  has VmManagerName => (is => 'ro', isa => 'Str', request_name => 'vmManagerName', traits => ['NameInRequest']);
  has VmManagerType => (is => 'ro', isa => 'Str', request_name => 'vmManagerType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::Connector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::Connector object:

  $service_obj->Method(Att1 => { AssociatedOn => $value, ..., VmManagerType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::Connector object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedOn

=head1 DESCRIPTION

Represents a connector.

=head1 ATTRIBUTES


=head2 AssociatedOn => Str

  The time the connector was associated.


=head2 CapabilityList => ArrayRef[Str|Undef]

  The capabilities of the connector.


=head2 ConnectorId => Str

  The identifier of the connector.


=head2 IpAddress => Str

  The IP address of the connector.


=head2 MacAddress => Str

  The MAC address of the connector.


=head2 Status => Str

  The status of the connector.


=head2 Version => Str

  The connector version.


=head2 VmManagerId => Str

  The identifier of the VM manager.


=head2 VmManagerName => Str

  The name of the VM manager.


=head2 VmManagerType => Str

  The VM management product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

