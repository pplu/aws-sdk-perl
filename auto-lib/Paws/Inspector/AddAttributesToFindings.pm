
package Paws::Inspector::AddAttributesToFindings;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' );
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'findingArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAttributesToFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::AddAttributesToFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AddAttributesToFindings - Arguments for method AddAttributesToFindings on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddAttributesToFindings on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method AddAttributesToFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddAttributesToFindings.

As an example:

  $service_obj->AddAttributesToFindings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

  The array of attributes that you want to assign to specified findings.


=head2 FindingArns => ArrayRef[Str]

  The ARNs specifying the findings that you want to assign attributes to.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddAttributesToFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

