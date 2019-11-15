package Paws::RedShift::NodeConfigurationOptionsFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Operator => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'item', request_name => 'Value', traits => ['NameInRequest','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::NodeConfigurationOptionsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::NodeConfigurationOptionsFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::NodeConfigurationOptionsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A set of elements to filter the returned node configurations.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the element to filter.


=head2 Operator => Str

  The filter operator. If filter Name is NodeType only the 'in' operator
is supported. Provide one value to evaluate for 'eq', 'lt', 'le', 'gt',
and 'ge'. Provide two values to evaluate for 'between'. Provide a list
of values for 'in'.


=head2 Values => ArrayRef[Str|Undef]

  List of values. Compare Name using Operator to Values. If filter Name
is NumberOfNodes, then values can range from 0 to 200. If filter Name
is EstimatedDiskUtilizationPercent, then values can range from 0 to
100. For example, filter NumberOfNodes (name) GT (operator) 3 (values).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

