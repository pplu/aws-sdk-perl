package Paws::DirectConnect::NewPublicVirtualInterface;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', request_name => 'addressFamily', traits => ['NameInRequest']);
  has AmazonAddress => (is => 'ro', isa => 'Str', request_name => 'amazonAddress', traits => ['NameInRequest']);
  has Asn => (is => 'ro', isa => 'Int', request_name => 'asn', traits => ['NameInRequest'], required => 1);
  has AuthKey => (is => 'ro', isa => 'Str', request_name => 'authKey', traits => ['NameInRequest']);
  has CustomerAddress => (is => 'ro', isa => 'Str', request_name => 'customerAddress', traits => ['NameInRequest']);
  has RouteFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', request_name => 'routeFilterPrefixes', traits => ['NameInRequest']);
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', request_name => 'virtualInterfaceName', traits => ['NameInRequest'], required => 1);
  has Vlan => (is => 'ro', isa => 'Int', request_name => 'vlan', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::NewPublicVirtualInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::NewPublicVirtualInterface object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., Vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::NewPublicVirtualInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

A structure containing information about a new public virtual
interface.

=head1 ATTRIBUTES


=head2 AddressFamily => Str

  


=head2 AmazonAddress => Str

  


=head2 B<REQUIRED> Asn => Int

  


=head2 AuthKey => Str

  


=head2 CustomerAddress => Str

  


=head2 RouteFilterPrefixes => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]

  


=head2 B<REQUIRED> VirtualInterfaceName => Str

  


=head2 B<REQUIRED> Vlan => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

