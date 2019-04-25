package Paws::ServerlessRepo::ParameterDefinition;
  use Moose;
  has AllowedPattern => (is => 'ro', isa => 'Str', request_name => 'allowedPattern', traits => ['NameInRequest']);
  has AllowedValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowedValues', traits => ['NameInRequest']);
  has ConstraintDescription => (is => 'ro', isa => 'Str', request_name => 'constraintDescription', traits => ['NameInRequest']);
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has MaxLength => (is => 'ro', isa => 'Int', request_name => 'maxLength', traits => ['NameInRequest']);
  has MaxValue => (is => 'ro', isa => 'Int', request_name => 'maxValue', traits => ['NameInRequest']);
  has MinLength => (is => 'ro', isa => 'Int', request_name => 'minLength', traits => ['NameInRequest']);
  has MinValue => (is => 'ro', isa => 'Int', request_name => 'minValue', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has NoEcho => (is => 'ro', isa => 'Bool', request_name => 'noEcho', traits => ['NameInRequest']);
  has ReferencedByResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'referencedByResources', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ParameterDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ParameterDefinition object:

  $service_obj->Method(Att1 => { AllowedPattern => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ParameterDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedPattern

=head1 DESCRIPTION

Parameters supported by the application.

=head1 ATTRIBUTES


=head2 AllowedPattern => Str

  A regular expression that represents the patterns to allow for String
types.


=head2 AllowedValues => ArrayRef[Str|Undef]

  An array containing the list of values allowed for the parameter.


=head2 ConstraintDescription => Str

  A string that explains a constraint when the constraint is violated.
For example, without a constraint description, a parameter that has an
allowed pattern of [A-Za-z0-9]+ displays the following error message
when the user specifies an invalid value:

Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+

By adding a constraint description, such as "must contain only
uppercase and lowercase letters and numbers," you can display the
following customized error message:

Malformed input-Parameter MyParameter must contain only uppercase and
lowercase letters and numbers.


=head2 DefaultValue => Str

  A value of the appropriate type for the template to use if no value is
specified when a stack is created. If you define constraints for the
parameter, you must specify a value that adheres to those constraints.


=head2 Description => Str

  A string of up to 4,000 characters that describes the parameter.


=head2 MaxLength => Int

  An integer value that determines the largest number of characters that
you want to allow for String types.


=head2 MaxValue => Int

  A numeric value that determines the largest numeric value that you want
to allow for Number types.


=head2 MinLength => Int

  An integer value that determines the smallest number of characters that
you want to allow for String types.


=head2 MinValue => Int

  A numeric value that determines the smallest numeric value that you
want to allow for Number types.


=head2 B<REQUIRED> Name => Str

  The name of the parameter.


=head2 NoEcho => Bool

  Whether to mask the parameter value whenever anyone makes a call that
describes the stack. If you set the value to true, the parameter value
is masked with asterisks (*****).


=head2 B<REQUIRED> ReferencedByResources => ArrayRef[Str|Undef]

  A list of AWS SAM resources that use this parameter.


=head2 Type => Str

  The type of the parameter.

Valid values: String | Number | ListE<lt>NumberE<gt> |
CommaDelimitedList

String: A literal string.

For example, users can specify "MyUserName".

Number: An integer or float. AWS CloudFormation validates the parameter
value as a number. However, when you use the parameter elsewhere in
your template (for example, by using the Ref intrinsic function), the
parameter value becomes a string.

For example, users might specify "8888".

ListE<lt>NumberE<gt>: An array of integers or floats that are separated
by commas. AWS CloudFormation validates the parameter value as numbers.
However, when you use the parameter elsewhere in your template (for
example, by using the Ref intrinsic function), the parameter value
becomes a list of strings.

For example, users might specify "80,20", and then Ref results in
["80","20"].

CommaDelimitedList: An array of literal strings that are separated by
commas. The total number of strings should be one more than the total
number of commas. Also, each member string is space-trimmed.

For example, users might specify "test,dev,prod", and then Ref results
in ["test","dev","prod"].



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

