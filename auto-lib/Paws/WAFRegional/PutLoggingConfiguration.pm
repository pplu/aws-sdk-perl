
package Paws::WAFRegional::PutLoggingConfiguration;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAFRegional::LoggingConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLoggingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::PutLoggingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::PutLoggingConfiguration - Arguments for method PutLoggingConfiguration on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLoggingConfiguration on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method PutLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLoggingConfiguration.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $PutLoggingConfigurationResponse =
      $waf -regional->PutLoggingConfiguration(
      LoggingConfiguration => {
        LogDestinationConfigs => [
          'MyResourceArn', ...    # min: 1, max: 1224
        ],                        # min: 1, max: 1
        ResourceArn    => 'MyResourceArn',    # min: 1, max: 1224
        RedactedFields => [
          {
            Type => 'URI'
            , # values: URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
            Data => 'MyMatchFieldData',    # OPTIONAL
          },
          ...
        ],                                 # OPTIONAL
      },

      );

    # Results:
    my $LoggingConfiguration =
      $PutLoggingConfigurationResponse->LoggingConfiguration;

    # Returns a L<Paws::WAFRegional::PutLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/PutLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfiguration => L<Paws::WAFRegional::LoggingConfiguration>

The Amazon Kinesis Data Firehose that contains the inspected traffic
information, the redacted fields details, and the Amazon Resource Name
(ARN) of the web ACL to monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLoggingConfiguration in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

