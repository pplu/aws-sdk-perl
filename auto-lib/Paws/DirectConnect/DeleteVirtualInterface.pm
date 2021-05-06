
package Paws::DirectConnect::DeleteVirtualInterface;
  use Moose;
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DeleteVirtualInterfaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteVirtualInterface - Arguments for method DeleteVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DeleteVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DeleteVirtualInterfaceResponse = $directconnect->DeleteVirtualInterface(
      VirtualInterfaceId => 'MyVirtualInterfaceId',

    );

    # Results:
    my $VirtualInterfaceState =
      $DeleteVirtualInterfaceResponse->VirtualInterfaceState;

    # Returns a L<Paws::DirectConnect::DeleteVirtualInterfaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DeleteVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

