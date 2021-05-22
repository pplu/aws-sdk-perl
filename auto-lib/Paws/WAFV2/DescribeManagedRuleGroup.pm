
package Paws::WAFV2::DescribeManagedRuleGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has VendorName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeManagedRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DescribeManagedRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DescribeManagedRuleGroup - Arguments for method DescribeManagedRuleGroup on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeManagedRuleGroup on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DescribeManagedRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeManagedRuleGroup.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DescribeManagedRuleGroupResponse = $wafv2->DescribeManagedRuleGroup(
      Name       => 'MyEntityName',
      Scope      => 'CLOUDFRONT',
      VendorName => 'MyVendorName',

    );

    # Results:
    my $AvailableLabels = $DescribeManagedRuleGroupResponse->AvailableLabels;
    my $Capacity        = $DescribeManagedRuleGroupResponse->Capacity;
    my $ConsumedLabels  = $DescribeManagedRuleGroupResponse->ConsumedLabels;
    my $LabelNamespace  = $DescribeManagedRuleGroupResponse->LabelNamespace;
    my $Rules           = $DescribeManagedRuleGroupResponse->Rules;

    # Returns a L<Paws::WAFV2::DescribeManagedRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DescribeManagedRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the managed rule group. You use this, along with the vendor
name, to identify the rule group.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> VendorName => Str

The name of the managed rule group vendor. You use this, along with the
rule group name, to identify the rule group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeManagedRuleGroup in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

