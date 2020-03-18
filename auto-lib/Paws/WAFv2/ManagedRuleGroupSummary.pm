package Paws::WAFv2::ManagedRuleGroupSummary;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VendorName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::ManagedRuleGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::ManagedRuleGroupSummary object:

  $service_obj->Method(Att1 => { Description => $value, ..., VendorName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::ManagedRuleGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

High-level information about a managed rule group, returned by
ListAvailableManagedRuleGroups. This provides information like the name
and vendor name, that you provide when you add a
ManagedRuleGroupStatement to a web ACL. Managed rule groups include AWS
managed rule groups, which are free of charge to AWS WAF customers, and
AWS Marketplace managed rule groups, which you can subscribe to through
AWS Marketplace.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the managed rule group, provided by AWS or the AWS
Marketplace seller who manages it.


=head2 Name => Str

  The name of the managed rule group. You use this, along with the vendor
name, to identify the rule group.


=head2 VendorName => Str

  The name of the managed rule group vendor. You use this, along with the
rule group name, to identify the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

