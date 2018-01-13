package Paws::Discovery::Filter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::Filter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

A filter that can use conditional operators.

For more information about filters, see Querying Discovered
Configuration Items
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Condition => Str

  A conditional operator. The following operators are valid: EQUALS,
NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters,
the system utilizes all filters as though concatenated by I<AND>. If
you specify multiple values for a particular filter, the system
differentiates the values using I<OR>. Calling either
I<DescribeConfigurations> or I<ListConfigurations> returns attributes
of matching configuration items.


=head2 B<REQUIRED> Name => Str

  The name of the filter.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  A string value on which to filter. For example, if you choose the
C<destinationServer.osVersion> filter name, you could specify C<Ubuntu>
for the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

