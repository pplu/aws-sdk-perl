package Paws::RDS::DBParameterGroup;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBParameterGroup

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBParameterGroup object:

  $service_obj->Method(Att1 => { DBParameterGroupFamily => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBParameterGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBParameterGroupFamily

=head1 ATTRIBUTES

=head2 DBParameterGroupFamily => Str

  Provides the name of the DB parameter group family that this DB
parameter group is compatible with.

=head2 DBParameterGroupName => Str

  Provides the name of the DB parameter group.

=head2 Description => Str

  Provides the customer-specified description for this DB parameter
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

