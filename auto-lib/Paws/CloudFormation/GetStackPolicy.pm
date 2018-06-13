
package Paws::CloudFormation::GetStackPolicy;
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStackPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetStackPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStackPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetStackPolicy - Arguments for method GetStackPolicy on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStackPolicy on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method GetStackPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStackPolicy.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $GetStackPolicyOutput = $cloudformation->GetStackPolicy(
      StackName => 'MyStackName',

    );

    # Results:
    my $StackPolicyBody = $GetStackPolicyOutput->StackPolicyBody;

    # Returns a L<Paws::CloudFormation::GetStackPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/GetStackPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackName => Str

The name or unique stack ID that is associated with the stack whose
policy you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStackPolicy in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

