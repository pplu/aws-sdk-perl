package Paws::DynamoDB::GlobalTableDescription;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has GlobalTableArn => (is => 'ro', isa => 'Str');
  has GlobalTableName => (is => 'ro', isa => 'Str');
  has GlobalTableStatus => (is => 'ro', isa => 'Str');
  has ReplicationGroup => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaDescription]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalTableDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalTableDescription object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., ReplicationGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalTableDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Contains details about the global table.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation time of the global table.


=head2 GlobalTableArn => Str

  The unique identifier of the global table.


=head2 GlobalTableName => Str

  The global table name.


=head2 GlobalTableStatus => Str

  The current state of the global table:

=over

=item *

C<CREATING> - The global table is being created.

=item *

C<UPDATING> - The global table is being updated.

=item *

C<DELETING> - The global table is being deleted.

=item *

C<ACTIVE> - The global table is ready for use.

=back



=head2 ReplicationGroup => ArrayRef[L<Paws::DynamoDB::ReplicaDescription>]

  The regions where the global table has replicas.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

