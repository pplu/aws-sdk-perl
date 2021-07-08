package Paws::EC2::AnalysisAclRule;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has Egress => (is => 'ro', isa => 'Bool', request_name => 'egress', traits => ['NameInRequest']);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', request_name => 'portRange', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has RuleAction => (is => 'ro', isa => 'Str', request_name => 'ruleAction', traits => ['NameInRequest']);
  has RuleNumber => (is => 'ro', isa => 'Int', request_name => 'ruleNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AnalysisAclRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AnalysisAclRule object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., RuleNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AnalysisAclRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

The IPv4 address range, in CIDR notation.


=head2 Egress => Bool

Indicates whether the rule is an outbound rule.


=head2 PortRange => L<Paws::EC2::PortRange>

The range of ports.


=head2 Protocol => Str

The protocol.


=head2 RuleAction => Str

Indicates whether to allow or deny traffic that matches the rule.


=head2 RuleNumber => Int

The rule number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
