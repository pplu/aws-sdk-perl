package Paws::ECS::Resource;
  use Moose;
  has doubleValue => (is => 'ro', isa => 'Num');
  has integerValue => (is => 'ro', isa => 'Int');
  has longValue => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has stringSetValue => (is => 'ro', isa => 'ArrayRef[Str]');
  has type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Resource

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Resource object:

  $service_obj->Method(Att1 => { doubleValue => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->doubleValue

=head1 ATTRIBUTES

=head2 doubleValue => Num

  

When the C<doubleValue> type is set, the value of the resource must be
a double precision floating-point type.










=head2 integerValue => Int

  

When the C<integerValue> type is set, the value of the resource must be
an integer.










=head2 longValue => Int

  

When the C<longValue> type is set, the value of the resource must be an
extended precision floating-point type.










=head2 name => Str

  

The name of the resource, such as C<CPU>, C<MEMORY>, C<PORTS>, or a
user-defined resource.










=head2 stringSetValue => ArrayRef[Str]

  

When the C<stringSetValue> type is set, the value of the resource must
be a string type.










=head2 type => Str

  

The type of the resource, such as C<INTEGER>, C<DOUBLE>, C<LONG>, or
C<STRINGSET>.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

