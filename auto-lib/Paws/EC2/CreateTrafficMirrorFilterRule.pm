
package Paws::EC2::CreateTrafficMirrorFilterRule;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorPortRangeRequest/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DestinationCidrBlock => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DestinationPortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRangeRequest, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Protocol => (is => 'ro', isa => Int, predicate => 1);
  has RuleAction => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RuleNumber => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has SourceCidrBlock => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourcePortRange => (is => 'ro', isa => EC2_TrafficMirrorPortRangeRequest, predicate => 1);
  has TrafficDirection => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTrafficMirrorFilterRule');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateTrafficMirrorFilterRuleResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'RuleNumber' => {
                                 'type' => 'Int'
                               },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'DestinationPortRange' => {
                                           'class' => 'Paws::EC2::TrafficMirrorPortRangeRequest',
                                           'type' => 'EC2_TrafficMirrorPortRangeRequest'
                                         },
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'RuleAction' => {
                                 'type' => 'Str'
                               },
               'SourcePortRange' => {
                                      'class' => 'Paws::EC2::TrafficMirrorPortRangeRequest',
                                      'type' => 'EC2_TrafficMirrorPortRangeRequest'
                                    },
               'TrafficDirection' => {
                                       'type' => 'Str'
                                     },
               'Protocol' => {
                               'type' => 'Int'
                             },
               'SourceCidrBlock' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'RuleAction' => 1,
                    'RuleNumber' => 1,
                    'TrafficMirrorFilterId' => 1,
                    'TrafficDirection' => 1,
                    'DestinationCidrBlock' => 1,
                    'SourceCidrBlock' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorFilterRule - Arguments for method CreateTrafficMirrorFilterRule on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficMirrorFilterRule on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTrafficMirrorFilterRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficMirrorFilterRule.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTrafficMirrorFilterRuleResult =
      $ec2->CreateTrafficMirrorFilterRule(
      DestinationCidrBlock  => 'MyString',
      RuleAction            => 'accept',
      RuleNumber            => 1,
      SourceCidrBlock       => 'MyString',
      TrafficDirection      => 'ingress',
      TrafficMirrorFilterId => 'MyString',
      ClientToken           => 'MyString',    # OPTIONAL
      Description           => 'MyString',    # OPTIONAL
      DestinationPortRange  => {
        FromPort => 1,
        ToPort   => 1,
      },                                      # OPTIONAL
      DryRun          => 1,                   # OPTIONAL
      Protocol        => 1,                   # OPTIONAL
      SourcePortRange => {
        FromPort => 1,
        ToPort   => 1,
      },                                      # OPTIONAL
      );

    # Results:
    my $ClientToken = $CreateTrafficMirrorFilterRuleResult->ClientToken;
    my $TrafficMirrorFilterRule =
      $CreateTrafficMirrorFilterRuleResult->TrafficMirrorFilterRule;

    # Returns a L<Paws::EC2::CreateTrafficMirrorFilterRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTrafficMirrorFilterRule>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

The description of the Traffic Mirror rule.



=head2 B<REQUIRED> DestinationCidrBlock => Str

The destination CIDR block to assign to the Traffic Mirror rule.



=head2 DestinationPortRange => EC2_TrafficMirrorPortRangeRequest

The destination port range.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Protocol => Int

The protocol, for example UDP, to assign to the Traffic Mirror rule.

For information about the protocol value, see Protocol Numbers
(https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
on the Internet Assigned Numbers Authority (IANA) website.



=head2 B<REQUIRED> RuleAction => Str

The action to take (C<accept> | C<reject>) on the filtered traffic.

Valid values are: C<"accept">, C<"reject">

=head2 B<REQUIRED> RuleNumber => Int

The number of the Traffic Mirror rule. This number must be unique for
each Traffic Mirror rule in a given direction. The rules are processed
in ascending order by rule number.



=head2 B<REQUIRED> SourceCidrBlock => Str

The source CIDR block to assign to the Traffic Mirror rule.



=head2 SourcePortRange => EC2_TrafficMirrorPortRangeRequest

The source port range.



=head2 B<REQUIRED> TrafficDirection => Str

The type of traffic (C<ingress> | C<egress>).

Valid values are: C<"ingress">, C<"egress">

=head2 B<REQUIRED> TrafficMirrorFilterId => Str

The ID of the filter that this rule is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficMirrorFilterRule in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

