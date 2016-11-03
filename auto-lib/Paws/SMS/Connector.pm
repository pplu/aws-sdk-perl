package Paws::SMS::Connector;
  use Moose;
  has AssociatedOn => (is => 'ro', isa => 'Str', xmlname => 'associatedOn', request_name => 'associatedOn', traits => ['Unwrapped','NameInRequest']);
  has CapabilityList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'item', xmlname => 'capabilityList', request_name => 'capabilityList', traits => ['NameInRequest','Unwrapped','NameInRequest']);
  has ConnectorId => (is => 'ro', isa => 'Str', xmlname => 'connectorId', request_name => 'connectorId', traits => ['Unwrapped','NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', xmlname => 'ipAddress', request_name => 'ipAddress', traits => ['Unwrapped','NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', xmlname => 'macAddress', request_name => 'macAddress', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
  has VmManagerId => (is => 'ro', isa => 'Str', xmlname => 'vmManagerId', request_name => 'vmManagerId', traits => ['Unwrapped','NameInRequest']);
  has VmManagerName => (is => 'ro', isa => 'Str', xmlname => 'vmManagerName', request_name => 'vmManagerName', traits => ['Unwrapped','NameInRequest']);
  has VmManagerType => (is => 'ro', isa => 'Str', xmlname => 'vmManagerType', request_name => 'vmManagerType', traits => ['Unwrapped','NameInRequest']);
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

Object representing a Connector

=head1 ATTRIBUTES


=head2 AssociatedOn => Str

  


=head2 CapabilityList => ArrayRef[Str|Undef]

  


=head2 ConnectorId => Str

  


=head2 IpAddress => Str

  


=head2 MacAddress => Str

  


=head2 Status => Str

  


=head2 Version => Str

  


=head2 VmManagerId => Str

  


=head2 VmManagerName => Str

  


=head2 VmManagerType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

