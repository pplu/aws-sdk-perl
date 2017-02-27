
package Paws::DirectConnect::AssociateHostedConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has ParentConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentConnectionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateHostedConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AssociateHostedConnection - Arguments for method AssociateHostedConnection on Paws::DirectConnect

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateHostedConnection on the 
AWS Direct Connect service. Use the attributes of this class
as arguments to method AssociateHostedConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateHostedConnection.

As an example:

  $service_obj->AssociateHostedConnection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the hosted connection.

Example: dxcon-abc123

Default: None



=head2 B<REQUIRED> ParentConnectionId => Str

The ID of the interconnect or the LAG.

Example: dxcon-abc123 or dxlag-abc123

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateHostedConnection in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

