package Paws::EC2::TrafficMirrorFilterRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', request_name => 'destinationCidrBlock', traits => ['NameInRequest']);
  has DestinationPortRange => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorPortRange', request_name => 'destinationPortRange', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Int', request_name => 'protocol', traits => ['NameInRequest']);
  has RuleAction => (is => 'ro', isa => 'Str', request_name => 'ruleAction', traits => ['NameInRequest']);
  has RuleNumber => (is => 'ro', isa => 'Int', request_name => 'ruleNumber', traits => ['NameInRequest']);
  has SourceCidrBlock => (is => 'ro', isa => 'Str', request_name => 'sourceCidrBlock', traits => ['NameInRequest']);
  has SourcePortRange => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorPortRange', request_name => 'sourcePortRange', traits => ['NameInRequest']);
  has TrafficDirection => (is => 'ro', isa => 'Str', request_name => 'trafficDirection', traits => ['NameInRequest']);
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorFilterId', traits => ['NameInRequest']);
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorFilterRuleId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrafficMirrorFilterRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrafficMirrorFilterRule object:

  $service_obj->Method(Att1 => { Description => $value, ..., TrafficMirrorFilterRuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrafficMirrorFilterRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the Traffic Mirror rule.


=head2 DestinationCidrBlock => Str

  The destination CIDR block assigned to the Traffic Mirror rule.


=head2 DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRange>

  The destination port range assigned to the Traffic Mirror rule.


=head2 Protocol => Int

  The protocol assigned to the Traffic Mirror rule.


=head2 RuleAction => Str

  The action assigned to the Traffic Mirror rule.


=head2 RuleNumber => Int

  The rule number of the Traffic Mirror rule.


=head2 SourceCidrBlock => Str

  The source CIDR block assigned to the Traffic Mirror rule.


=head2 SourcePortRange => L<Paws::EC2::TrafficMirrorPortRange>

  The source port range assigned to the Traffic Mirror rule.


=head2 TrafficDirection => Str

  The traffic direction assigned to the Traffic Mirror rule.


=head2 TrafficMirrorFilterId => Str

  The ID of the Traffic Mirror filter that the rule is associated with.


=head2 TrafficMirrorFilterRuleId => Str

  The ID of the Traffic Mirror rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
