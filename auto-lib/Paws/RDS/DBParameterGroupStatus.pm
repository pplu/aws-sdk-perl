package Paws::RDS::DBParameterGroupStatus;
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBParameterGroupStatus

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBParameterGroupStatus object:

  $service_obj->Method(Att1 => { DBParameterGroupName => $value, ..., ParameterApplyStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBParameterGroupStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->DBParameterGroupName

=head1 ATTRIBUTES

=head2 DBParameterGroupName => Str

  

The name of the DP parameter group.










=head2 ParameterApplyStatus => Str

  

The status of parameter updates.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

