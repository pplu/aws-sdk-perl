package Paws::AccessAnalyzer::Criterion;
  use Moose;
  has Contains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'contains', traits => ['NameInRequest']);
  has Eq => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eq', traits => ['NameInRequest']);
  has Exists => (is => 'ro', isa => 'Bool', request_name => 'exists', traits => ['NameInRequest']);
  has Neq => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'neq', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::Criterion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::Criterion object:

  $service_obj->Method(Att1 => { Contains => $value, ..., Neq => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::Criterion object:

  $result = $service_obj->Method(...);
  $result->Att1->Contains

=head1 DESCRIPTION

The criteria to use in the filter that defines the archive rule.

=head1 ATTRIBUTES


=head2 Contains => ArrayRef[Str|Undef]

  A "contains" operator to match for the filter used to create the rule.


=head2 Eq => ArrayRef[Str|Undef]

  An "equals" operator to match for the filter used to create the rule.


=head2 Exists => Bool

  An "exists" operator to match for the filter used to create the rule.


=head2 Neq => ArrayRef[Str|Undef]

  A "not equals" operator to match for the filter used to create the
rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

