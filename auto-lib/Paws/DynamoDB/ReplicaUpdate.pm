package Paws::DynamoDB::ReplicaUpdate;
  use Moose;
  has Create => (is => 'ro', isa => 'Paws::DynamoDB::CreateReplicaAction');
  has Delete => (is => 'ro', isa => 'Paws::DynamoDB::DeleteReplicaAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaUpdate object:

  $service_obj->Method(Att1 => { Create => $value, ..., Delete => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Create

=head1 DESCRIPTION

Represents one of the following:

=over

=item *

A new replica to be added to an existing global table.

=item *

New parameters for an existing replica.

=item *

An existing replica to be removed from an existing global table.

=back


=head1 ATTRIBUTES


=head2 Create => L<Paws::DynamoDB::CreateReplicaAction>

  The parameters required for creating a replica on an existing global
table.


=head2 Delete => L<Paws::DynamoDB::DeleteReplicaAction>

  The name of the existing replica to be removed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

