
package Paws::IAM::GetContextKeysForPrincipalPolicy;
  use Moose;
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PolicySourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContextKeysForPrincipalPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetContextKeysForPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetContextKeysForPrincipalPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForPrincipalPolicy - Arguments for method GetContextKeysForPrincipalPolicy on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContextKeysForPrincipalPolicy on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method GetContextKeysForPrincipalPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContextKeysForPrincipalPolicy.

As an example:

  $service_obj->GetContextKeysForPrincipalPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 PolicyInputList => ArrayRef[Str|Undef]

An optional list of additional policies for which you want the list of
context keys that are referenced.

This parameter allows (per its regex pattern) a string of characters
consisting of any printable ASCII character ranging from the space
character (\u0020) through end of the ASCII character range (\u00FF).
It also includes the special characters tab (\u0009), line feed
(\u000A), and carriage return (\u000D).



=head2 B<REQUIRED> PolicySourceArn => Str

The ARN of a user, group, or role whose policies contain the context
keys that you want listed. If you specify a user, the list includes
context keys that are found in all policies attached to the user as
well as to all groups that the user is a member of. If you pick a group
or a role, then it includes only those context keys that are found in
policies attached to that entity. Note that all parameters are shown in
unencoded form here for clarity, but must be URL encoded to be included
as a part of a real HTML request.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContextKeysForPrincipalPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

