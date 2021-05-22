
package Paws::IoTFleetHub::CreateApplication;
  use Moose;
  has ApplicationDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationDescription');
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTFleetHub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetHub::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::CreateApplication - Arguments for method CreateApplication on L<Paws::IoTFleetHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS IoT Fleet Hub|Paws::IoTFleetHub> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $api.fleethub.iot = Paws->service('IoTFleetHub');
    my $CreateApplicationResponse = $api . fleethub . iot->CreateApplication(
      ApplicationName        => 'MyName',
      RoleArn                => 'MyArn',
      ApplicationDescription => 'MyDescription',           # OPTIONAL
      ClientToken            => 'MyClientRequestToken',    # OPTIONAL
      Tags                   => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationArn = $CreateApplicationResponse->ApplicationArn;
    my $ApplicationId  = $CreateApplicationResponse->ApplicationId;

    # Returns a L<Paws::IoTFleetHub::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.fleethub.iot/CreateApplication>

=head1 ATTRIBUTES


=head2 ApplicationDescription => Str

An optional description of the web application.



=head2 B<REQUIRED> ApplicationName => Str

The name of the web application.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that the web application assumes when it interacts
with AWS IoT Core.

The name of the role must be in the form
C<AWSIotFleetHub_I<random_string> >.



=head2 Tags => L<Paws::IoTFleetHub::TagMap>

A set of key/value pairs that you can use to manage the web application
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::IoTFleetHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

