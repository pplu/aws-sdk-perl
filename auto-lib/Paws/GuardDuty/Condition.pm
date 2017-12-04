package Paws::GuardDuty::Condition;
  use Moose;
  has Eq => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eq', traits => ['NameInRequest']);
  has Gt => (is => 'ro', isa => 'Int', request_name => 'gt', traits => ['NameInRequest']);
  has Gte => (is => 'ro', isa => 'Int', request_name => 'gte', traits => ['NameInRequest']);
  has Lt => (is => 'ro', isa => 'Int', request_name => 'lt', traits => ['NameInRequest']);
  has Lte => (is => 'ro', isa => 'Int', request_name => 'lte', traits => ['NameInRequest']);
  has Neq => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'neq', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Condition object:

  $service_obj->Method(Att1 => { Eq => $value, ..., Neq => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->Eq

=head1 DESCRIPTION

Finding attribute (for example, accountId) for which conditions and
values must be specified when querying findings.

=head1 ATTRIBUTES


=head2 Eq => ArrayRef[Str|Undef]

  Represents the equal condition to be applied to a single field when
querying for findings.


=head2 Gt => Int

  Represents the greater than condition to be applied to a single field
when querying for findings.


=head2 Gte => Int

  Represents the greater than equal condition to be applied to a single
field when querying for findings.


=head2 Lt => Int

  Represents the less than condition to be applied to a single field when
querying for findings.


=head2 Lte => Int

  Represents the less than equal condition to be applied to a single
field when querying for findings.


=head2 Neq => ArrayRef[Str|Undef]

  Represents the not equal condition to be applied to a single field when
querying for findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

