
package Paws::EC2::ModifyTrafficMirrorFilterRule;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorPortRangeRequest/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DestinationCidrBlock => (is => 'ro', isa => Str, predicate => 1);
  has DestinationPortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRangeRequest, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Protocol => (is => 'ro', isa => Int, predicate => 1);
  has RemoveFields => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has RuleAction => (is => 'ro', isa => Str, predicate => 1);
  has RuleNumber => (is => 'ro', isa => Int, predicate => 1);
  has SourceCidrBlock => (is => 'ro', isa => Str, predicate => 1);
  has SourcePortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRangeRequest, predicate => 1);
  has TrafficDirection => (is => 'ro', isa => Str, predicate => 1);
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyTrafficMirrorFilterRule');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ModifyTrafficMirrorFilterRuleResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourcePortRange' => {
                                      'class' => 'Paws::EC2::TrafficMirrorPortRangeRequest',
                                      'type' => 'EC2_TrafficMirrorPortRangeRequest'
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
               'DestinationPortRange' => {
                                           'class' => 'Paws::EC2::TrafficMirrorPortRangeRequest',
                                           'type' => 'EC2_TrafficMirrorPortRangeRequest'
                                         },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'RemoveFields' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RemoveFields' => 'RemoveField'
                     },
  'IsRequired' => {
                    'TrafficMirrorFilterRuleId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterRule - Arguments for method ModifyTrafficMirrorFilterRule on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTrafficMirrorFilterRule on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyTrafficMirrorFilterRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTrafficMirrorFilterRule.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyTrafficMirrorFilterRuleResult =
      $ec2->ModifyTrafficMirrorFilterRule(
      TrafficMirrorFilterRuleId => 'MyTrafficMirrorFilterRuleId',
      Description               => 'MyString',                      # OPTIONAL
      DestinationCidrBlock      => 'MyString',                      # OPTIONAL
      DestinationPortRange      => {
        FromPort => 1,                                              # OPTIONAL
        ToPort   => 1,                                              # OPTIONAL
      },    # OPTIONAL
      DryRun       => 1,    # OPTIONAL
      Protocol     => 1,    # OPTIONAL
      RemoveFields => [
        'destination-port-range',
        ... # values: destination-port-range, source-port-range, protocol, description
      ],    # OPTIONAL
      RuleAction      => 'accept',      # OPTIONAL
      RuleNumber      => 1,             # OPTIONAL
      SourceCidrBlock => 'MyString',    # OPTIONAL
      SourcePortRange => {
        FromPort => 1,                  # OPTIONAL
        ToPort   => 1,                  # OPTIONAL
      },    # OPTIONAL
      TrafficDirection => 'ingress',    # OPTIONAL
      );

    # Results:
    my $TrafficMirrorFilterRule =
      $ModifyTrafficMirrorFilterRuleResult->TrafficMirrorFilterRule;

    # Returns a L<Paws::EC2::ModifyTrafficMirrorFilterRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyTrafficMirrorFilterRule>

=head1 ATTRIBUTES


=head2 Description => Str

The description to assign to the Traffic Mirror rule.



=head2 DestinationCidrBlock => Str

The destination CIDR block to assign to the Traffic Mirror rule.



=head2 DestinationPortRange => EC2_TrafficMirrorPortRangeRequest

The destination ports that are associated with the Traffic Mirror rule.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Protocol => Int

The protocol, for example TCP, to assign to the Traffic Mirror rule.



=head2 RemoveFields => ArrayRef[Str|Undef]

The properties that you want to remove from the Traffic Mirror filter
rule.

When you remove a property from a Traffic Mirror filter rule, the
property is set to the default.



=head2 RuleAction => Str

The action to assign to the rule.

Valid values are: C<"accept">, C<"reject">

=head2 RuleNumber => Int

The number of the Traffic Mirror rule. This number must be unique for
each Traffic Mirror rule in a given direction. The rules are processed
in ascending order by rule number.



=head2 SourceCidrBlock => Str

The source CIDR block to assign to the Traffic Mirror rule.



=head2 SourcePortRange => EC2_TrafficMirrorPortRangeRequest

The port range to assign to the Traffic Mirror rule.



=head2 TrafficDirection => Str

The type of traffic (C<ingress> | C<egress>) to assign to the rule.

Valid values are: C<"ingress">, C<"egress">

=head2 B<REQUIRED> TrafficMirrorFilterRuleId => Str

The ID of the Traffic Mirror rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTrafficMirrorFilterRule in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

