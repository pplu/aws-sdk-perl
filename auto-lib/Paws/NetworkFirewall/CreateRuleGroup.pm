
package Paws::NetworkFirewall::CreateRuleGroup;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RuleGroup => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleGroup');
  has RuleGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::CreateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::CreateRuleGroup - Arguments for method CreateRuleGroup on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRuleGroup on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method CreateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRuleGroup.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $CreateRuleGroupResponse = $network -firewall->CreateRuleGroup(
      Capacity      => 1,
      RuleGroupName => 'MyResourceName',
      Type          => 'STATELESS',
      Description   => 'MyDescription',    # OPTIONAL
      DryRun        => 1,                  # OPTIONAL
      RuleGroup     => {
        RulesSource => {
          RulesSourceList => {
            GeneratedRulesType => 'ALLOWLIST',    # values: ALLOWLIST, DENYLIST
            TargetTypes        => [
              'TLS_SNI', ...                      # values: TLS_SNI, HTTP_HOST
            ],
            Targets => [ 'MyCollectionMember_String', ... ],

          },    # OPTIONAL
          RulesString   => 'MyRulesString',    # max: 1000000; OPTIONAL
          StatefulRules => [
            {
              Action => 'PASS',                # values: PASS, DROP, ALERT
              Header => {
                Destination     => 'MyDestination',    # min: 1, max: 1024
                DestinationPort => 'MyPort',           # min: 1, max: 1024
                Direction       => 'FORWARD',          # values: FORWARD, ANY
                Protocol        => 'IP'
                , # values: IP, TCP, UDP, ICMP, HTTP, FTP, TLS, SMB, DNS, DCERPC, SSH, SMTP, IMAP, MSN, KRB5, IKEV2, TFTP, NTP, DHCP
                Source     => 'MySource',    # min: 1, max: 1024
                SourcePort => 'MyPort',      # min: 1, max: 1024

              },
              RuleOptions => [
                {
                  Keyword  => 'MyKeyword',    # min: 1, max: 128
                  Settings => [
                    'MySetting', ...          # min: 1, max: 8192
                  ],    # OPTIONAL
                },
                ...
              ],

            },
            ...
          ],    # OPTIONAL
          StatelessRulesAndCustomActions => {
            StatelessRules => [
              {
                Priority       => 1,    # min: 1, max: 65535
                RuleDefinition => {
                  Actions         => [ 'MyCollectionMember_String', ... ],
                  MatchAttributes => {
                    DestinationPorts => [
                      {
                        FromPort => 1,    # max: 65535
                        ToPort   => 1,    # max: 65535

                      },
                      ...
                    ],    # OPTIONAL
                    Destinations => [
                      {
                        AddressDefinition =>
                          'MyAddressDefinition',    # min: 1, max: 255

                      },
                      ...
                    ],    # OPTIONAL
                    Protocols => [
                      1, ...    # max: 255
                    ],    # OPTIONAL
                    SourcePorts => [
                      {
                        FromPort => 1,    # max: 65535
                        ToPort   => 1,    # max: 65535

                      },
                      ...
                    ],    # OPTIONAL
                    Sources => [
                      {
                        AddressDefinition =>
                          'MyAddressDefinition',    # min: 1, max: 255

                      },
                      ...
                    ],    # OPTIONAL
                    TCPFlags => [
                      {
                        Flags => [
                          'FIN',
                          ...   # values: FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
                        ],
                        Masks => [
                          'FIN',
                          ...   # values: FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
                        ],
                      },
                      ...
                    ],    # OPTIONAL
                  },

                },

              },
              ...
            ],
            CustomActions => [
              {
                ActionDefinition => {
                  PublishMetricAction => {
                    Dimensions => [
                      {
                        Value => 'MyDimensionValue',    # min: 1, max: 128

                      },
                      ...
                    ],    # min: 1, max: 1

                  },    # OPTIONAL
                },
                ActionName => 'MyActionName',    # min: 1, max: 128

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },
        RuleVariables => {
          IPSets => {
            'MyRuleVariableName' => {
              Definition => [
                'MyVariableDefinition', ...    # min: 1
              ],

            },    # key: min: 1, max: 32
          },    # OPTIONAL
          PortSets => {
            'MyRuleVariableName' => {
              Definition => [
                'MyVariableDefinition', ...    # min: 1
              ],
            },    # key: min: 1, max: 32
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Rules => 'MyRulesString',    # OPTIONAL
      Tags  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RuleGroupResponse = $CreateRuleGroupResponse->RuleGroupResponse;
    my $UpdateToken       = $CreateRuleGroupResponse->UpdateToken;

    # Returns a L<Paws::NetworkFirewall::CreateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/CreateRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capacity => Int

The maximum operating resources that this rule group can use. Rule
group capacity is fixed at creation. When you update a rule group, you
are limited to this capacity. When you reference a rule group from a
firewall policy, Network Firewall reserves this capacity for the rule
group.

You can retrieve the capacity that would be required for a rule group
before you create the rule group by calling CreateRuleGroup with
C<DryRun> set to C<TRUE>.

You can't change or exceed this capacity when you update the rule
group, so leave room for your rule group to grow.

B<Capacity for a stateless rule group>

For a stateless rule group, the capacity required is the sum of the
capacity requirements of the individual rules that you expect to have
in the rule group.

To calculate the capacity requirement of a single rule, multiply the
capacity requirement values of each of the rule's match settings:

=over

=item *

A match setting with no criteria specified has a value of 1.

=item *

A match setting with C<Any> specified has a value of 1.

=item *

All other match settings have a value equal to the number of elements
provided in the setting. For example, a protocol setting ["UDP"] and a
source setting ["10.0.0.0/24"] each have a value of 1. A protocol
setting ["UDP","TCP"] has a value of 2. A source setting
["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"] has a value of 3.

=back

A rule with no criteria specified in any of its match settings has a
capacity requirement of 1. A rule with protocol setting ["UDP","TCP"],
source setting ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"], and a
single specification or no specification for each of the other match
settings has a capacity requirement of 6.

B<Capacity for a stateful rule group>

For a stateful rule group, the minimum capacity required is the number
of individual rules that you expect to have in the rule group.



=head2 Description => Str

A description of the rule group.



=head2 DryRun => Bool

Indicates whether you want Network Firewall to just check the validity
of the request, rather than run the request.

If set to C<TRUE>, Network Firewall checks whether the request can run
successfully, but doesn't actually make the requested changes. The call
returns the value that the request would return if you ran it with dry
run set to C<FALSE>, but doesn't make additions or changes to your
resources. This option allows you to make sure that you have the
required permissions to run the request and that your request
parameters are valid.

If set to C<FALSE>, Network Firewall makes the requested changes to
your resources.



=head2 RuleGroup => L<Paws::NetworkFirewall::RuleGroup>

An object that defines the rule group rules.

You must provide either this rule group setting or a C<Rules> setting,
but not both.



=head2 B<REQUIRED> RuleGroupName => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.



=head2 Rules => Str

A string containing stateful rule group rules specifications in
Suricata flat format, with one rule per line. Use this to import your
existing Suricata compatible rule groups.

You must provide either this rules setting or a populated C<RuleGroup>
setting, but not both.

You can provide your rule group specification in Suricata flat format
through this setting when you create or update your rule group. The
call response returns a RuleGroup object that Network Firewall has
populated from your string.



=head2 Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]

The key:value pairs to associate with the resource.



=head2 B<REQUIRED> Type => Str

Indicates whether the rule group is stateless or stateful. If the rule
group is stateless, it contains stateless rules. If it is stateful, it
contains stateful rules.

Valid values are: C<"STATELESS">, C<"STATEFUL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRuleGroup in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

