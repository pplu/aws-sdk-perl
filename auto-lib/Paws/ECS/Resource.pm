package Paws::ECS::Resource;
  use Moose;
  has DoubleValue => (is => 'ro', isa => 'Num', request_name => 'doubleValue', traits => ['NameInRequest']);
  has IntegerValue => (is => 'ro', isa => 'Int', request_name => 'integerValue', traits => ['NameInRequest']);
  has LongValue => (is => 'ro', isa => 'Int', request_name => 'longValue', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has StringSetValue => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'stringSetValue', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Resource object:

  $service_obj->Method(Att1 => { DoubleValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->DoubleValue

=head1 DESCRIPTION

Describes the resources available for a container instance.

=head1 ATTRIBUTES


=head2 DoubleValue => Num

  When the C<doubleValue> type is set, the value of the resource must be
a double precision floating-point type.


=head2 IntegerValue => Int

  When the C<integerValue> type is set, the value of the resource must be
an integer.


=head2 LongValue => Int

  When the C<longValue> type is set, the value of the resource must be an
extended precision floating-point type.


=head2 Name => Str

  The name of the resource, such as C<CPU>, C<MEMORY>, C<PORTS>,
C<PORTS_UDP>, or a user-defined resource.


=head2 StringSetValue => ArrayRef[Str|Undef]

  When the C<stringSetValue> type is set, the value of the resource must
be a string type.


=head2 Type => Str

  The type of the resource, such as C<INTEGER>, C<DOUBLE>, C<LONG>, or
C<STRINGSET>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

