package Paws::WAFRegional::SizeConstraintSetUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has SizeConstraint => (is => 'ro', isa => 'Paws::WAFRegional::SizeConstraint', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::SizeConstraintSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::SizeConstraintSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., SizeConstraint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::SizeConstraintSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the part of a web request that you want to inspect the size
of and indicates whether you want to add the specification to a
SizeConstraintSet or delete it from a C<SizeConstraintSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specify C<INSERT> to add a SizeConstraintSetUpdate to a
SizeConstraintSet. Use C<DELETE> to remove a C<SizeConstraintSetUpdate>
from a C<SizeConstraintSet>.


=head2 B<REQUIRED> SizeConstraint => L<Paws::WAFRegional::SizeConstraint>

  Specifies a constraint on the size of a part of the web request. AWS
WAF uses the C<Size>, C<ComparisonOperator>, and C<FieldToMatch> to
build an expression in the form of "C<Size> C<ComparisonOperator> size
in bytes of C<FieldToMatch>". If that expression is true, the
C<SizeConstraint> is considered to match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

