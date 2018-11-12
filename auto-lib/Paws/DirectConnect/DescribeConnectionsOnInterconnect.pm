
package Paws::DirectConnect::DescribeConnectionsOnInterconnect;
  use Moose;
  has InterconnectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connections');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionsOnInterconnect - Arguments for method DescribeConnectionsOnInterconnect on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectionsOnInterconnect on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeConnectionsOnInterconnect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectionsOnInterconnect.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Connections = $directconnect->DescribeConnectionsOnInterconnect(
      InterconnectId => 'MyInterconnectId',

    );

    # Results:
    my $Connections = $Connections->Connections;

    # Returns a L<Paws::DirectConnect::Connections> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeConnectionsOnInterconnect>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InterconnectId => Str

The ID of the interconnect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectionsOnInterconnect in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

