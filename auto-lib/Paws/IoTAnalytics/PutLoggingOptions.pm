
package Paws::IoTAnalytics::PutLoggingOptions;
  use Moose;
  has LoggingOptions => (is => 'ro', isa => 'Paws::IoTAnalytics::LoggingOptions', traits => ['NameInRequest'], request_name => 'loggingOptions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLoggingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::PutLoggingOptions - Arguments for method PutLoggingOptions on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLoggingOptions on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method PutLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLoggingOptions.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->PutLoggingOptions(
      LoggingOptions => {
        Enabled => 1,
        Level   => 'ERROR',        # values: ERROR
        RoleArn => 'MyRoleArn',    # min: 20, max: 2048

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/PutLoggingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingOptions => L<Paws::IoTAnalytics::LoggingOptions>

The new values of the AWS IoT Analytics logging options.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLoggingOptions in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

