package Paws::RDS::DBSnapshotAttributesResult;
  use Moose;
  has DBSnapshotAttributes => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSnapshotAttribute]', request_name => 'DBSnapshotAttribute', traits => ['NameInRequest']);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSnapshotAttributesResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSnapshotAttributesResult object:

  $service_obj->Method(Att1 => { DBSnapshotAttributes => $value, ..., DBSnapshotIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSnapshotAttributesResult object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSnapshotAttributes

=head1 DESCRIPTION

Contains the results of a successful call to the
DescribeDBSnapshotAttributes API action.

Manual DB snapshot attributes are used to authorize other AWS accounts
to copy or restore a manual DB snapshot. For more information, see the
ModifyDBSnapshotAttribute API action.

=head1 ATTRIBUTES


=head2 DBSnapshotAttributes => ArrayRef[L<Paws::RDS::DBSnapshotAttribute>]

  The list of attributes and values for the manual DB snapshot.


=head2 DBSnapshotIdentifier => Str

  The identifier of the manual DB snapshot that the attributes apply to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

