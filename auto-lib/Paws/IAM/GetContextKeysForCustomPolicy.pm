
package Paws::IAM::GetContextKeysForCustomPolicy;
  use Moose;
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContextKeysForCustomPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetContextKeysForPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetContextKeysForCustomPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForCustomPolicy - Arguments for method GetContextKeysForCustomPolicy on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContextKeysForCustomPolicy on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method GetContextKeysForCustomPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContextKeysForCustomPolicy.

As an example:

  $service_obj->GetContextKeysForCustomPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyInputList => ArrayRef[Str]

  A list of policies for which you want list of context keys used in
C<Condition> elements. Each document is specified as a string
containing the complete, valid JSON text of an IAM policy.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContextKeysForCustomPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

