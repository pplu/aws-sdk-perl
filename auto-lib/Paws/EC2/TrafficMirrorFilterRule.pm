package Paws::EC2::TrafficMirrorFilterRule;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorPortRange/;
  has Description => (is => 'ro', isa => Str);
  has DestinationCidrBlock => (is => 'ro', isa => Str);
  has DestinationPortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRange);
  has Protocol => (is => 'ro', isa => Int);
  has RuleAction => (is => 'ro', isa => Str);
  has RuleNumber => (is => 'ro', isa => Int);
  has SourceCidrBlock => (is => 'ro', isa => Str);
  has SourcePortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRange);
  has TrafficDirection => (is => 'ro', isa => Str);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str);
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DestinationCidrBlock' => 'destinationCidrBlock',
                       'RuleNumber' => 'ruleNumber',
                       'RuleAction' => 'ruleAction',
                       'Protocol' => 'protocol',
                       'SourceCidrBlock' => 'sourceCidrBlock',
                       'TrafficDirection' => 'trafficDirection',
                       'SourcePortRange' => 'sourcePortRange',
                       'TrafficMirrorFilterRuleId' => 'trafficMirrorFilterRuleId',
                       'Description' => 'description',
                       'TrafficMirrorFilterId' => 'trafficMirrorFilterId',
                       'DestinationPortRange' => 'destinationPortRange'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'DestinationPortRange' => {
                                           'class' => 'Paws::EC2::TrafficMirrorPortRange',
                                           'type' => 'EC2_TrafficMirrorPortRange'
                                         },
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'RuleAction' => {
                                 'type' => 'Str'
                               },
               'RuleNumber' => {
                                 'type' => 'Int'
                               },
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'SourcePortRange' => {
                                      'class' => 'Paws::EC2::TrafficMirrorPortRange',
                                      'type' => 'EC2_TrafficMirrorPortRange'
                                    },
               'TrafficMirrorFilterRuleId' => {
                                                'type' => 'Str'
                                              },
               'TrafficDirection' => {
                                       'type' => 'Str'
                                     },
               'SourceCidrBlock' => {
                                      'type' => 'Str'
                                    },
               'Protocol' => {
                               'type' => 'Int'
                             }
             }
}
;
    return $Params_map;
  }

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


=head2 DestinationPortRange => EC2_TrafficMirrorPortRange

  The destination port range assigned to the Traffic Mirror rule.


=head2 Protocol => Int

  The protocol assigned to the Traffic Mirror rule.


=head2 RuleAction => Str

  The action assigned to the Traffic Mirror rule.


=head2 RuleNumber => Int

  The rule number of the Traffic Mirror rule.


=head2 SourceCidrBlock => Str

  The source CIDR block assigned to the Traffic Mirror rule.


=head2 SourcePortRange => EC2_TrafficMirrorPortRange

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
