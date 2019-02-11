package Paws::DocDB::DBClusterParameterGroup;
  use Moose;
  has DBClusterParameterGroupArn => (is => 'ro', isa => 'Str');
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterParameterGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBClusterParameterGroup object:

  $service_obj->Method(Att1 => { DBClusterParameterGroupArn => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBClusterParameterGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBClusterParameterGroupArn

=head1 DESCRIPTION

Detailed information about a DB cluster parameter group.

=head1 ATTRIBUTES


=head2 DBClusterParameterGroupArn => Str

  The Amazon Resource Name (ARN) for the DB cluster parameter group.


=head2 DBClusterParameterGroupName => Str

  Provides the name of the DB cluster parameter group.


=head2 DBParameterGroupFamily => Str

  Provides the name of the DB parameter group family that this DB cluster
parameter group is compatible with.


=head2 Description => Str

  Provides the customer-specified description for this DB cluster
parameter group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

