
package Paws::DirectConnect::DescribeVirtualInterfaces;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterfaces');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeVirtualInterfaces - Arguments for method DescribeVirtualInterfaces on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVirtualInterfaces on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeVirtualInterfaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVirtualInterfaces.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterfaces = $directconnect->DescribeVirtualInterfaces(
      ConnectionId       => 'MyConnectionId',          # OPTIONAL
      VirtualInterfaceId => 'MyVirtualInterfaceId',    # OPTIONAL
    );

    # Results:
    my $VirtualInterfaces = $VirtualInterfaces->VirtualInterfaces;

    # Returns a L<Paws::DirectConnect::VirtualInterfaces> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeVirtualInterfaces>

=head1 ATTRIBUTES


=head2 ConnectionId => Str

The ID of the connection.



=head2 VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVirtualInterfaces in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

