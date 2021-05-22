
package Paws::NetworkFirewall::UpdateRuleGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RuleGroup => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleGroup');
  has RuleGroupArn => (is => 'ro', isa => 'Str');
  has RuleGroupName => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::UpdateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateRuleGroup - Arguments for method UpdateRuleGroup on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleGroup on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method UpdateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleGroup.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $UpdateRuleGroupResponse = $network -firewall->UpdateRuleGroup(
      UpdateToken => 'MyUpdateToken',
      Description => 'MyDescription',    # OPTIONAL
      DryRun      => 1,                  # OPTIONAL
      RuleGroup   => {
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
                  ],                          # OPTIONAL
                },
                ...
              ],

            },
            ...
          ],                                  # OPTIONAL
          StatelessRulesAndCustomActions => {
            StatelessRules => [
              {
                Priority       => 1,          # min: 1, max: 65535
                RuleDefinition => {
                  Actions         => [ 'MyCollectionMember_String', ... ],
                  MatchAttributes => {
                    DestinationPorts => [
                      {
                        FromPort => 1,        # max: 65535
                        ToPort   => 1,        # max: 65535

                      },
                      ...
                    ],                        # OPTIONAL
                    Destinations => [
                      {
                        AddressDefinition =>
                          'MyAddressDefinition',    # min: 1, max: 255

                      },
                      ...
                    ],                              # OPTIONAL
                    Protocols => [
                      1, ...                        # max: 255
                    ],                              # OPTIONAL
                    SourcePorts => [
                      {
                        FromPort => 1,              # max: 65535
                        ToPort   => 1,              # max: 65535

                      },
                      ...
                    ],                              # OPTIONAL
                    Sources => [
                      {
                        AddressDefinition =>
                          'MyAddressDefinition',    # min: 1, max: 255

                      },
                      ...
                    ],                              # OPTIONAL
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
                    ],          # OPTIONAL
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
                    ],                                  # min: 1, max: 1

                  },    # OPTIONAL
                },
                ActionName => 'MyActionName',    # min: 1, max: 128

              },
              ...
            ],                                   # OPTIONAL
          },    # OPTIONAL
        },
        RuleVariables => {
          IPSets => {
            'MyRuleVariableName' => {
              Definition => [
                'MyVariableDefinition', ...    # min: 1
              ],                               # OPTIONAL

            },    # key: min: 1, max: 32
          },    # OPTIONAL
          PortSets => {
            'MyRuleVariableName' => {
              Definition => [
                'MyVariableDefinition', ...    # min: 1
              ],                               # OPTIONAL
            },    # key: min: 1, max: 32
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RuleGroupArn  => 'MyResourceArn',     # OPTIONAL
      RuleGroupName => 'MyResourceName',    # OPTIONAL
      Rules         => 'MyRulesString',     # OPTIONAL
      Type          => 'STATELESS',         # OPTIONAL
    );

    # Results:
    my $RuleGroupResponse = $UpdateRuleGroupResponse->RuleGroupResponse;
    my $UpdateToken       = $UpdateRuleGroupResponse->UpdateToken;

    # Returns a L<Paws::NetworkFirewall::UpdateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/UpdateRuleGroup>

=head1 ATTRIBUTES


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



=head2 RuleGroupArn => Str

The Amazon Resource Name (ARN) of the rule group.

You must specify the ARN or the name, and you can specify both.



=head2 RuleGroupName => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.

You must specify the ARN or the name, and you can specify both.



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



=head2 Type => Str

Indicates whether the rule group is stateless or stateful. If the rule
group is stateless, it contains stateless rules. If it is stateful, it
contains stateful rules.

This setting is required for requests that do not include the
C<RuleGroupARN>.

Valid values are: C<"STATELESS">, C<"STATEFUL">

=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the rule group. The token marks the state
of the rule group resource at the time of the request.

To make changes to the rule group, you provide the token in your
request. Network Firewall uses the token to ensure that the rule group
hasn't changed since you last retrieved it. If it has changed, the
operation fails with an C<InvalidTokenException>. If this happens,
retrieve the rule group again to get a current copy of it with a
current token. Reapply your changes as needed, then try the operation
again using the new token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleGroup in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

