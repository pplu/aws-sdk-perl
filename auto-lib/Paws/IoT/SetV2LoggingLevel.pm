
package Paws::IoT::SetV2LoggingLevel;
  use Moose;
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel', required => 1);
  has LogTarget => (is => 'ro', isa => 'Paws::IoT::LogTarget', traits => ['NameInRequest'], request_name => 'logTarget', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetV2LoggingLevel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2LoggingLevel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SetV2LoggingLevel - Arguments for method SetV2LoggingLevel on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetV2LoggingLevel on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SetV2LoggingLevel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetV2LoggingLevel.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->SetV2LoggingLevel(
      LogLevel  => 'DEBUG',
      LogTarget => {
        TargetType => 'DEFAULT',            # values: DEFAULT, THING_GROUP
        TargetName => 'MyLogTargetName',    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/SetV2LoggingLevel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogLevel => Str

The log level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">

=head2 B<REQUIRED> LogTarget => L<Paws::IoT::LogTarget>

The log target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetV2LoggingLevel in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

