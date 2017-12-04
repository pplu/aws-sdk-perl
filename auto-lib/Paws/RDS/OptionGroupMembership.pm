package Paws::RDS::OptionGroupMembership;
  use Moose;
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionGroupMembership object:

  $service_obj->Method(Att1 => { OptionGroupName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->OptionGroupName

=head1 DESCRIPTION

Provides information on the option groups the DB instance is a member
of.

=head1 ATTRIBUTES


=head2 OptionGroupName => Str

  The name of the option group that the instance belongs to.


=head2 Status => Str

  The status of the DB instance's option group membership. Valid values
are: C<in-sync>, C<pending-apply>, C<pending-removal>,
C<pending-maintenance-apply>, C<pending-maintenance-removal>,
C<applying>, C<removing>, and C<failed>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

