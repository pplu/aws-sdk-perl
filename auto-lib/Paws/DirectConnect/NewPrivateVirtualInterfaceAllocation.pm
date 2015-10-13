package Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation;
  use Moose;
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation object:

  $service_obj->Method(Att1 => { amazonAddress => $value, ..., vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation object:

  $result = $service_obj->Method(...);
  $result->Att1->amazonAddress

=head1 DESCRIPTION

A structure containing information about a private virtual interface
that will be provisioned on a connection.

=head1 ATTRIBUTES

=head2 amazonAddress => Str

  

=head2 B<REQUIRED> asn => Int

  

=head2 authKey => Str

  

=head2 customerAddress => Str

  

=head2 B<REQUIRED> virtualInterfaceName => Str

  

=head2 B<REQUIRED> vlan => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

