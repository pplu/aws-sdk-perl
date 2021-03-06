
package Paws::IoTFleetHub::DeleteApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetHub::DeleteApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::DeleteApplication - Arguments for method DeleteApplication on L<Paws::IoTFleetHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplication on the
L<AWS IoT Fleet Hub|Paws::IoTFleetHub> service. Use the attributes of this class
as arguments to method DeleteApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplication.

=head1 SYNOPSIS

    my $api.fleethub.iot = Paws->service('IoTFleetHub');
    my $DeleteApplicationResponse = $api . fleethub . iot->DeleteApplication(
      ApplicationId => 'MyId',
      ClientToken   => 'MyClientRequestToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.fleethub.iot/DeleteApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique Id of the web application.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplication in L<Paws::IoTFleetHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

