package Paws::Neptune::DBParameterGroup;
  use Moose;
  has DBParameterGroupArn => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBParameterGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBParameterGroup object:

  $service_obj->Method(Att1 => { DBParameterGroupArn => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBParameterGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBParameterGroupArn

=head1 DESCRIPTION

Contains the details of an Amazon Neptune DB parameter group.

This data type is used as a response element in the
DescribeDBParameterGroups action.

=head1 ATTRIBUTES


=head2 DBParameterGroupArn => Str

  The Amazon Resource Name (ARN) for the DB parameter group.


=head2 DBParameterGroupFamily => Str

  Provides the name of the DB parameter group family that this DB
parameter group is compatible with.


=head2 DBParameterGroupName => Str

  Provides the name of the DB parameter group.


=head2 Description => Str

  Provides the customer-specified description for this DB parameter
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

