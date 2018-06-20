package Paws::Neptune::DBSecurityGroupMembership;
  use Moose;
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBSecurityGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBSecurityGroupMembership object:

  $service_obj->Method(Att1 => { DBSecurityGroupName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBSecurityGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSecurityGroupName

=head1 DESCRIPTION

This data type is used as a response element in the following actions:

=over

=item *

ModifyDBInstance

=item *

RebootDBInstance

=back


=head1 ATTRIBUTES


=head2 DBSecurityGroupName => Str

  The name of the DB security group.


=head2 Status => Str

  The status of the DB security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

