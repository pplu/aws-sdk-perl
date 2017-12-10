package Paws::SDB::UpdateCondition;
  use Moose;
  has Exists => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::UpdateCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SDB::UpdateCondition object:

  $service_obj->Method(Att1 => { Exists => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SDB::UpdateCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Exists

=head1 DESCRIPTION

Specifies the conditions under which data should be updated. If an
update condition is specified for a request, the data will only be
updated if the condition is satisfied. For example, if an attribute
with a specific name and value exists, or if a specific attribute
doesn't exist.

=head1 ATTRIBUTES


=head2 Exists => Bool

  A value specifying whether or not the specified attribute must exist
with the specified value in order for the update condition to be
satisfied. Specify C<true> if the attribute must exist for the update
condition to be satisfied. Specify C<false> if the attribute should not
exist in order for the update condition to be satisfied.


=head2 Name => Str

  The name of the attribute involved in the condition.


=head2 Value => Str

  The value of an attribute. This value can only be specified when the
C<Exists> parameter is equal to C<true>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

