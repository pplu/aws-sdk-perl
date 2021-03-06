# Generated by default/object.tt
package Paws::NetworkFirewall::RuleGroupMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::RuleGroupMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFirewall::RuleGroupMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFirewall::RuleGroupMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

High-level information about a rule group, returned by ListRuleGroups.
You can use the information provided in the metadata to retrieve and
manage a rule group.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the rule group.


=head2 Name => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

