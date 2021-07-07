
package Paws::WAFV2::GetRuleGroup;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::GetRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetRuleGroup - Arguments for method GetRuleGroup on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRuleGroup on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method GetRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRuleGroup.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $GetRuleGroupResponse = $wafv2->GetRuleGroup(
      ARN   => 'MyResourceArn',    # OPTIONAL
      Id    => 'MyEntityId',       # OPTIONAL
      Name  => 'MyEntityName',     # OPTIONAL
      Scope => 'CLOUDFRONT',       # OPTIONAL
    );

    # Results:
    my $LockToken = $GetRuleGroupResponse->LockToken;
    my $RuleGroup = $GetRuleGroupResponse->RuleGroup;

    # Returns a L<Paws::WAFV2::GetRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetRuleGroup>

=head1 ATTRIBUTES


=head2 ARN => Str

The Amazon Resource Name (ARN) of the entity.



=head2 Id => Str

A unique identifier for the rule group. This ID is returned in the
responses to create and list commands. You provide it to operations
like update and delete.



=head2 Name => Str

The name of the rule group. You cannot change the name of a rule group
after you create it.



=head2 Scope => Str

Specifies whether this is for an Amazon CloudFront distribution or for
a regional application. A regional application can be an Application
Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync
GraphQL API.

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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRuleGroup in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

