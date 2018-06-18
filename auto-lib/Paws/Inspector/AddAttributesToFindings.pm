
package Paws::Inspector::AddAttributesToFindings;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' , required => 1);
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAttributesToFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::AddAttributesToFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AddAttributesToFindings - Arguments for method AddAttributesToFindings on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddAttributesToFindings on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method AddAttributesToFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddAttributesToFindings.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
   # Add attributes to findings
   # Assigns attributes (key and value pairs) to the findings that are specified
   # by the ARNs of the findings.
    my $AddAttributesToFindingsResponse = $inspector->AddAttributesToFindings(
      {
        'Attributes' => [

          {
            'Key'   => 'Example',
            'Value' => 'example'
          }
        ],
        'FindingArns' => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-8l1VIE0D/run/0-Z02cjjug/finding/0-T8yM9mEU'
        ]
      }
    );

    # Results:
    my $failedItems = $AddAttributesToFindingsResponse->failedItems;

    # Returns a L<Paws::Inspector::AddAttributesToFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/AddAttributesToFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

The array of attributes that you want to assign to specified findings.



=head2 B<REQUIRED> FindingArns => ArrayRef[Str|Undef]

The ARNs that specify the findings that you want to assign attributes
to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddAttributesToFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

