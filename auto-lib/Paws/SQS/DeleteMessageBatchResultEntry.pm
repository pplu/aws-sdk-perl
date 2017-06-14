package Paws::SQS::DeleteMessageBatchResultEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::DeleteMessageBatchResultEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::DeleteMessageBatchResultEntry object:

  $service_obj->Method(Att1 => { Id => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::DeleteMessageBatchResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Encloses the C<Id> of an entry in C< DeleteMessageBatch.>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  Represents a successfully deleted message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

