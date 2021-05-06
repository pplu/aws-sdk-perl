
package Paws::IoT::GetV2LoggingOptions;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetV2LoggingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2LoggingOptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetV2LoggingOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetV2LoggingOptions - Arguments for method GetV2LoggingOptions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetV2LoggingOptions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetV2LoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetV2LoggingOptions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetV2LoggingOptionsResponse = $iot->GetV2LoggingOptions();

    # Results:
    my $DefaultLogLevel = $GetV2LoggingOptionsResponse->DefaultLogLevel;
    my $DisableAllLogs  = $GetV2LoggingOptionsResponse->DisableAllLogs;
    my $RoleArn         = $GetV2LoggingOptionsResponse->RoleArn;

    # Returns a L<Paws::IoT::GetV2LoggingOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetV2LoggingOptions>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetV2LoggingOptions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

