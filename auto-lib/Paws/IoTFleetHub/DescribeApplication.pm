
package Paws::IoTFleetHub::DescribeApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetHub::DescribeApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::DescribeApplication - Arguments for method DescribeApplication on L<Paws::IoTFleetHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplication on the
L<AWS IoT Fleet Hub|Paws::IoTFleetHub> service. Use the attributes of this class
as arguments to method DescribeApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplication.

=head1 SYNOPSIS

    my $api.fleethub.iot = Paws->service('IoTFleetHub');
    my $DescribeApplicationResponse =
      $api . fleethub . iot->DescribeApplication(
      ApplicationId => 'MyId',

      );

    # Results:
    my $ApplicationArn = $DescribeApplicationResponse->ApplicationArn;
    my $ApplicationCreationDate =
      $DescribeApplicationResponse->ApplicationCreationDate;
    my $ApplicationDescription =
      $DescribeApplicationResponse->ApplicationDescription;
    my $ApplicationId = $DescribeApplicationResponse->ApplicationId;
    my $ApplicationLastUpdateDate =
      $DescribeApplicationResponse->ApplicationLastUpdateDate;
    my $ApplicationName  = $DescribeApplicationResponse->ApplicationName;
    my $ApplicationState = $DescribeApplicationResponse->ApplicationState;
    my $ApplicationUrl   = $DescribeApplicationResponse->ApplicationUrl;
    my $ErrorMessage     = $DescribeApplicationResponse->ErrorMessage;
    my $RoleArn          = $DescribeApplicationResponse->RoleArn;
    my $SsoClientId      = $DescribeApplicationResponse->SsoClientId;
    my $Tags             = $DescribeApplicationResponse->Tags;

    # Returns a L<Paws::IoTFleetHub::DescribeApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.fleethub.iot/DescribeApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique Id of the web application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplication in L<Paws::IoTFleetHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

