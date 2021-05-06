
package Paws::DirectConnect::ConfirmConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::ConfirmConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmConnection - Arguments for method ConfirmConnection on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmConnection on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method ConfirmConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmConnection.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $ConfirmConnectionResponse = $directconnect->ConfirmConnection(
      ConnectionId => 'MyConnectionId',

    );

    # Results:
    my $ConnectionState = $ConfirmConnectionResponse->ConnectionState;

    # Returns a L<Paws::DirectConnect::ConfirmConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/ConfirmConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the hosted connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmConnection in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

