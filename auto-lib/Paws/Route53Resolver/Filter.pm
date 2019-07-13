package Paws::Route53Resolver::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

For C<List> operations, an optional specification to return a subset of
objects, such as resolver endpoints or resolver rules.

=head1 ATTRIBUTES


=head2 Name => Str

  When you're using a C<List> operation and you want the operation to
return a subset of objects, such as resolver endpoints or resolver
rules, the name of the parameter that you want to use to filter
objects. For example, to list only inbound resolver endpoints, specify
C<Direction> for the value of C<Name>.


=head2 Values => ArrayRef[Str|Undef]

  When you're using a C<List> operation and you want the operation to
return a subset of objects, such as resolver endpoints or resolver
rules, the value of the parameter that you want to use to filter
objects. For example, to list only inbound resolver endpoints, specify
C<INBOUND> for the value of C<Values>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

