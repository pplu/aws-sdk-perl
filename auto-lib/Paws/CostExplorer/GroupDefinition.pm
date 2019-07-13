package Paws::CostExplorer::GroupDefinition;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GroupDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::GroupDefinition object:

  $service_obj->Method(Att1 => { Key => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::GroupDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Represents a group when you specify a group by criteria or in the
response to a query with a specific grouping.

=head1 ATTRIBUTES


=head2 Key => Str

  The string that represents a key for a specified group.


=head2 Type => Str

  The string that represents the type of group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

