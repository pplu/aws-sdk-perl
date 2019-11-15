package Paws::QLDBSession::CommitTransactionResult;
  use Moose;
  has CommitDigest => (is => 'ro', isa => 'Str');
  has TransactionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::CommitTransactionResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::CommitTransactionResult object:

  $service_obj->Method(Att1 => { CommitDigest => $value, ..., TransactionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::CommitTransactionResult object:

  $result = $service_obj->Method(...);
  $result->Att1->CommitDigest

=head1 DESCRIPTION

Contains the details of the committed transaction.

=head1 ATTRIBUTES


=head2 CommitDigest => Str

  The commit digest of the committed transaction.


=head2 TransactionId => Str

  The transaction id of the committed transaction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

