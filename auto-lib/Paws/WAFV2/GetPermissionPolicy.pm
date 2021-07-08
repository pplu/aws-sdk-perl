
package Paws::WAFV2::GetPermissionPolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPermissionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::GetPermissionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetPermissionPolicy - Arguments for method GetPermissionPolicy on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPermissionPolicy on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method GetPermissionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPermissionPolicy.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $GetPermissionPolicyResponse = $wafv2->GetPermissionPolicy(
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $Policy = $GetPermissionPolicyResponse->Policy;

    # Returns a L<Paws::WAFV2::GetPermissionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetPermissionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the rule group for which you want to
get the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPermissionPolicy in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

