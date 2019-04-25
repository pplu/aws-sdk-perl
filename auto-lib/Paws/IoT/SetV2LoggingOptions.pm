
package Paws::IoT::SetV2LoggingOptions;
  use Moose;
  has DefaultLogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLogLevel');
  has DisableAllLogs => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableAllLogs');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetV2LoggingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2LoggingOptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SetV2LoggingOptions - Arguments for method SetV2LoggingOptions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetV2LoggingOptions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SetV2LoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetV2LoggingOptions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->SetV2LoggingOptions(
      DefaultLogLevel => 'DEBUG',       # OPTIONAL
      DisableAllLogs  => 1,             # OPTIONAL
      RoleArn         => 'MyAwsArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/SetV2LoggingOptions>

=head1 ATTRIBUTES


=head2 DefaultLogLevel => Str

The default logging level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">

=head2 DisableAllLogs => Bool

If true all logs are disabled. The default is false.



=head2 RoleArn => Str

The ARN of the role that allows IoT to write to Cloudwatch logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetV2LoggingOptions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

