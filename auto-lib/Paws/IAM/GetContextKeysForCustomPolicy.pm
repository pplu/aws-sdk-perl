
package Paws::IAM::GetContextKeysForCustomPolicy;
  use Moose;
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContextKeysForCustomPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetContextKeysForPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetContextKeysForCustomPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForCustomPolicy - Arguments for method GetContextKeysForCustomPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContextKeysForCustomPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetContextKeysForCustomPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContextKeysForCustomPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetContextKeysForPolicyResponse = $iam->GetContextKeysForCustomPolicy(
      PolicyInputList => [
        'MypolicyDocumentType', ...    # min: 1, max: 131072
      ],

    );

    # Results:
    my $ContextKeyNames = $GetContextKeysForPolicyResponse->ContextKeyNames;

    # Returns a L<Paws::IAM::GetContextKeysForPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetContextKeysForCustomPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyInputList => ArrayRef[Str|Undef]

A list of policies for which you want the list of context keys
referenced in those policies. Each document is specified as a string
containing the complete, valid JSON text of an IAM policy.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContextKeysForCustomPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

