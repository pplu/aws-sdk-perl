package Paws::QLDBSession::ExecuteStatementRequest;
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::QLDBSession::ValueHolder]');
  has Statement => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::ExecuteStatementRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::ExecuteStatementRequest object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., TransactionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::ExecuteStatementRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

Specifies a request to execute a statement.

=head1 ATTRIBUTES


=head2 Parameters => ArrayRef[L<Paws::QLDBSession::ValueHolder>]

  Specifies the parameters for the parameterized statement in the
request.


=head2 B<REQUIRED> Statement => Str

  Specifies the statement of the request.


=head2 B<REQUIRED> TransactionId => Str

  Specifies the transaction id of the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

