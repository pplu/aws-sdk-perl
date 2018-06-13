
package Paws::CloudFormation::SetStackPolicy;
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetStackPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::SetStackPolicy - Arguments for method SetStackPolicy on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetStackPolicy on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method SetStackPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetStackPolicy.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    $cloudformation->SetStackPolicy(
      StackName       => 'MyStackName',
      StackPolicyBody => 'MyStackPolicyBody',    # OPTIONAL
      StackPolicyURL  => 'MyStackPolicyURL',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/SetStackPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackName => Str

The name or unique stack ID that you want to associate a policy with.



=head2 StackPolicyBody => Str

Structure containing the stack policy body. For more information, go to
Prevent Updates to Stack Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html)
in the AWS CloudFormation User Guide. You can specify either the
C<StackPolicyBody> or the C<StackPolicyURL> parameter, but not both.



=head2 StackPolicyURL => Str

Location of a file containing the stack policy. The URL must point to a
policy (maximum size: 16 KB) located in an S3 bucket in the same region
as the stack. You can specify either the C<StackPolicyBody> or the
C<StackPolicyURL> parameter, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetStackPolicy in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

