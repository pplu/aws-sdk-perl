
package Paws::Inspector::RemoveAttributesFromFindings;
  use Moose;
  has attributeKeys => (is => 'ro', isa => 'ArrayRef[Str]');
  has findingArns => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAttributesFromFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::RemoveAttributesFromFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RemoveAttributesFromFindings - Arguments for method RemoveAttributesFromFindings on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAttributesFromFindings on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method RemoveAttributesFromFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAttributesFromFindings.

As an example:

  $service_obj->RemoveAttributesFromFindings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 attributeKeys => ArrayRef[Str]

  The array of attribute keys that you want to remove from specified
findings.

=head2 findingArns => ArrayRef[Str]

  The ARNs specifying the findings that you want to remove attributes
from.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAttributesFromFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

