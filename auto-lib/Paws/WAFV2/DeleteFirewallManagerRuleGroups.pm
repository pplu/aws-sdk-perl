
package Paws::WAFV2::DeleteFirewallManagerRuleGroups;
  use Moose;
  has WebACLArn => (is => 'ro', isa => 'Str', required => 1);
  has WebACLLockToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFirewallManagerRuleGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DeleteFirewallManagerRuleGroups - Arguments for method DeleteFirewallManagerRuleGroups on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFirewallManagerRuleGroups on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DeleteFirewallManagerRuleGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFirewallManagerRuleGroups.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DeleteFirewallManagerRuleGroupsResponse =
      $wafv2->DeleteFirewallManagerRuleGroups(
      WebACLArn       => 'MyResourceArn',
      WebACLLockToken => 'MyLockToken',

      );

    # Results:
    my $NextWebACLLockToken =
      $DeleteFirewallManagerRuleGroupsResponse->NextWebACLLockToken;

    # Returns a L<Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DeleteFirewallManagerRuleGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebACLArn => Str

The Amazon Resource Name (ARN) of the web ACL.



=head2 B<REQUIRED> WebACLLockToken => Str

A token used for optimistic locking. AWS WAF returns a token to your
get and list requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like update and delete. AWS WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another get, and use the new token returned by that operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFirewallManagerRuleGroups in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

