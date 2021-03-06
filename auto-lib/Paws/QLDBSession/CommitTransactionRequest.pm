# Generated by default/object.tt
package Paws::QLDBSession::CommitTransactionRequest;
  use Moose;
  has CommitDigest => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::CommitTransactionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::CommitTransactionRequest object:

  $service_obj->Method(Att1 => { CommitDigest => $value, ..., TransactionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::CommitTransactionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CommitDigest

=head1 DESCRIPTION

Contains the details of the transaction to commit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitDigest => Str

Specifies the commit digest for the transaction to commit. For every
active transaction, the commit digest must be passed. QLDB validates
C<CommitDigest> and rejects the commit with an error if the digest
computed on the client does not match the digest computed by QLDB.

The purpose of the C<CommitDigest> parameter is to ensure that QLDB
commits a transaction if and only if the server has processed the exact
set of statements sent by the client, in the same order that client
sent them, and with no duplicates.


=head2 B<REQUIRED> TransactionId => Str

Specifies the transaction ID of the transaction to commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

