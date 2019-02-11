package Paws::ServiceCatalog::ConstraintDetail;
  use Moose;
  has ConstraintId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ConstraintDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ConstraintDetail object:

  $service_obj->Method(Att1 => { ConstraintId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ConstraintDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstraintId

=head1 DESCRIPTION

Information about a constraint.

=head1 ATTRIBUTES


=head2 ConstraintId => Str

  The identifier of the constraint.


=head2 Description => Str

  The description of the constraint.


=head2 Owner => Str

  The owner of the constraint.


=head2 Type => Str

  The type of constraint.

=over

=item *

C<LAUNCH>

=item *

C<NOTIFICATION>

=item *

STACKSET

=item *

C<TEMPLATE>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

