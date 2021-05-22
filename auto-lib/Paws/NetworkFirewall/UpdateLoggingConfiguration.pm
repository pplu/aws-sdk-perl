
package Paws::NetworkFirewall::UpdateLoggingConfiguration;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::LoggingConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoggingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::UpdateLoggingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateLoggingConfiguration - Arguments for method UpdateLoggingConfiguration on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLoggingConfiguration on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method UpdateLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLoggingConfiguration.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $UpdateLoggingConfigurationResponse =
      $network -firewall->UpdateLoggingConfiguration(
      FirewallArn          => 'MyResourceArn',     # OPTIONAL
      FirewallName         => 'MyResourceName',    # OPTIONAL
      LoggingConfiguration => {
        LogDestinationConfigs => [
          {
            LogDestination => {
              'MyHashMapKey' => 'MyHashMapValue'
              ,    # key: min: 3, max: 50, value: min: 1, max: 1024
            },
            LogDestinationType => 'S3'
            ,   # values: S3, CloudWatchLogs, KinesisDataFirehosemin: 2, max: 30
            LogType => 'ALERT',    # values: ALERT, FLOW

          },
          ...
        ],

      },    # OPTIONAL
      );

    # Results:
    my $FirewallArn  = $UpdateLoggingConfigurationResponse->FirewallArn;
    my $FirewallName = $UpdateLoggingConfigurationResponse->FirewallName;
    my $LoggingConfiguration =
      $UpdateLoggingConfigurationResponse->LoggingConfiguration;

# Returns a L<Paws::NetworkFirewall::UpdateLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/UpdateLoggingConfiguration>

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.

You must specify the ARN or the name, and you can specify both.



=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.

You must specify the ARN or the name, and you can specify both.



=head2 LoggingConfiguration => L<Paws::NetworkFirewall::LoggingConfiguration>

Defines how Network Firewall performs logging for a firewall. If you
omit this setting, Network Firewall disables logging for the firewall.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLoggingConfiguration in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

