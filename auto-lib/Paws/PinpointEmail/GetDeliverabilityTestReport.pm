
package Paws::PinpointEmail::GetDeliverabilityTestReport;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ReportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeliverabilityTestReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/deliverability-dashboard/test-reports/{ReportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::GetDeliverabilityTestReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDeliverabilityTestReport - Arguments for method GetDeliverabilityTestReport on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeliverabilityTestReport on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method GetDeliverabilityTestReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeliverabilityTestReport.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $GetDeliverabilityTestReportResponse =
      $email->GetDeliverabilityTestReport(
      ReportId => 'MyReportId',

      );

    # Results:
    my $DeliverabilityTestReport =
      $GetDeliverabilityTestReportResponse->DeliverabilityTestReport;
    my $IspPlacements = $GetDeliverabilityTestReportResponse->IspPlacements;
    my $Message       = $GetDeliverabilityTestReportResponse->Message;
    my $OverallPlacement =
      $GetDeliverabilityTestReportResponse->OverallPlacement;

 # Returns a L<Paws::PinpointEmail::GetDeliverabilityTestReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDeliverabilityTestReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportId => Str

A unique string that identifies the predictive inbox placement test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeliverabilityTestReport in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

