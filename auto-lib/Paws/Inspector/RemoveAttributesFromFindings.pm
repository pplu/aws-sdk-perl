
package Paws::Inspector::RemoveAttributesFromFindings;
  use Moose;
  has AttributeKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributeKeys' , required => 1);
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAttributesFromFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::RemoveAttributesFromFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RemoveAttributesFromFindings - Arguments for method RemoveAttributesFromFindings on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAttributesFromFindings on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method RemoveAttributesFromFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAttributesFromFindings.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
   # Remove attributes from findings
   # Removes entire attributes (key and value pairs) from the findings that are
   # specified by the ARNs of the findings where an attribute with the specified
   # key exists.
    my $RemoveAttributesFromFindingsResponse =
      $inspector->RemoveAttributesFromFindings(
      {
        'AttributeKeys' => ['key=Example,value=example'],
        'FindingArns'   => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-8l1VIE0D/run/0-Z02cjjug/finding/0-T8yM9mEU'
        ]
      }
      );

    # Results:
    my $failedItems = $RemoveAttributesFromFindingsResponse->failedItems;

    # Returns a L<Paws::Inspector::RemoveAttributesFromFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/RemoveAttributesFromFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeKeys => ArrayRef[Str|Undef]

The array of attribute keys that you want to remove from specified
findings.



=head2 B<REQUIRED> FindingArns => ArrayRef[Str|Undef]

The ARNs that specify the findings that you want to remove attributes
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAttributesFromFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

