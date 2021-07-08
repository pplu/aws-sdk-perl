
package Paws::IoTSiteWise::PutLoggingOptions;
  use Moose;
  has LoggingOptions => (is => 'ro', isa => 'Paws::IoTSiteWise::LoggingOptions', traits => ['NameInRequest'], request_name => 'loggingOptions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLoggingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::PutLoggingOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::PutLoggingOptions - Arguments for method PutLoggingOptions on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLoggingOptions on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method PutLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLoggingOptions.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $PutLoggingOptionsResponse = $iotsitewise->PutLoggingOptions(
      LoggingOptions => {
        Level => 'ERROR',    # values: ERROR, INFO, OFF

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/PutLoggingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingOptions => L<Paws::IoTSiteWise::LoggingOptions>

The logging options to set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLoggingOptions in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

