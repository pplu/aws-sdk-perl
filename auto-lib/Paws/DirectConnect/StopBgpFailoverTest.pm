
package Paws::DirectConnect::StopBgpFailoverTest;
  use Moose;
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopBgpFailoverTest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::StopBgpFailoverTestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::StopBgpFailoverTest - Arguments for method StopBgpFailoverTest on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopBgpFailoverTest on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method StopBgpFailoverTest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopBgpFailoverTest.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $StopBgpFailoverTestResponse = $directconnect->StopBgpFailoverTest(
      VirtualInterfaceId => 'MyVirtualInterfaceId',

    );

    # Results:
    my $VirtualInterfaceTest =
      $StopBgpFailoverTestResponse->VirtualInterfaceTest;

    # Returns a L<Paws::DirectConnect::StopBgpFailoverTestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/StopBgpFailoverTest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface you no longer want to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopBgpFailoverTest in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

