# Generated by default/object.tt
package Paws::WAFV2::ManagedRuleGroupSummary;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VendorName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ManagedRuleGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::ManagedRuleGroupSummary object:

  $service_obj->Method(Att1 => { Description => $value, ..., VendorName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::ManagedRuleGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

High-level information about a managed rule group, returned by
ListAvailableManagedRuleGroups. This provides information like the name
and vendor name, that you provide when you add a
ManagedRuleGroupStatement to a web ACL. Managed rule groups include
Amazon Web Services Managed Rules rule groups, which are free of charge
to WAF customers, and Marketplace managed rule groups, which you can
subscribe to through Marketplace.

=head1 ATTRIBUTES


=head2 Description => Str

The description of the managed rule group, provided by Amazon Web
Services Managed Rules or the Marketplace seller who manages it.


=head2 Name => Str

The name of the managed rule group. You use this, along with the vendor
name, to identify the rule group.


=head2 VendorName => Str

The name of the managed rule group vendor. You use this, along with the
rule group name, to identify the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

