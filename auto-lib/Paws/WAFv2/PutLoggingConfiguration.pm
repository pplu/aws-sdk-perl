
package Paws::WAFv2::PutLoggingConfiguration;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAFv2::LoggingConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLoggingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::PutLoggingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::PutLoggingConfiguration - Arguments for method PutLoggingConfiguration on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLoggingConfiguration on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method PutLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLoggingConfiguration.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $PutLoggingConfigurationResponse = $wafv2->PutLoggingConfiguration(
      LoggingConfiguration => {
        LogDestinationConfigs => [
          'MyResourceArn', ...    # min: 20, max: 2048
        ],                        # min: 1, max: 100
        ResourceArn    => 'MyResourceArn',    # min: 20, max: 2048
        RedactedFields => [
          {
            AllQueryArguments => {

            },                                # OPTIONAL
            Body => {

            },                                # OPTIONAL
            Method => {

            },                                # OPTIONAL
            QueryString => {

            },                                # OPTIONAL
            SingleHeader => {
              Name => 'MyFieldToMatchData',    # min: 1, max: 64

            },    # OPTIONAL
            SingleQueryArgument => {
              Name => 'MyFieldToMatchData',    # min: 1, max: 64

            },    # OPTIONAL
            UriPath => {

            },    # OPTIONAL
          },
          ...
        ],        # max: 100; OPTIONAL
      },

    );

    # Results:
    my $LoggingConfiguration =
      $PutLoggingConfigurationResponse->LoggingConfiguration;

    # Returns a L<Paws::WAFv2::PutLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/PutLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfiguration => L<Paws::WAFv2::LoggingConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLoggingConfiguration in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

