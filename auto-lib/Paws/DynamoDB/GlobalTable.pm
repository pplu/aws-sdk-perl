package Paws::DynamoDB::GlobalTable;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str');
  has ReplicationGroup => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Replica]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalTable object:

  $service_obj->Method(Att1 => { GlobalTableName => $value, ..., ReplicationGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalTable object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalTableName

=head1 DESCRIPTION

Represents the properties of a global table.

=head1 ATTRIBUTES


=head2 GlobalTableName => Str

  The global table name.


=head2 ReplicationGroup => ArrayRef[L<Paws::DynamoDB::Replica>]

  The regions where the global table has replicas.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

