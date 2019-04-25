package Paws::WorkSpaces::IpRuleItem;
  use Moose;
  has IpRule => (is => 'ro', isa => 'Str', request_name => 'ipRule', traits => ['NameInRequest']);
  has RuleDesc => (is => 'ro', isa => 'Str', request_name => 'ruleDesc', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::IpRuleItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::IpRuleItem object:

  $service_obj->Method(Att1 => { IpRule => $value, ..., RuleDesc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::IpRuleItem object:

  $result = $service_obj->Method(...);
  $result->Att1->IpRule

=head1 DESCRIPTION

Describes a rule for an IP access control group.

=head1 ATTRIBUTES


=head2 IpRule => Str

  The IP address range, in CIDR notation.


=head2 RuleDesc => Str

  The description.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

