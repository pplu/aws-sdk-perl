
package Paws::LookoutVision::StopModel;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelVersion', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/models/{modelVersion}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::StopModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::StopModel - Arguments for method StopModel on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopModel on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method StopModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopModel.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $StopModelResponse = $lookoutvision->StopModel(
      ModelVersion => 'MyModelVersion',
      ProjectName  => 'MyProjectName',
      ClientToken  => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $Status = $StopModelResponse->Status;

    # Returns a L<Paws::LookoutVision::StopModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/StopModel>

=head1 ATTRIBUTES


=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to C<StopModel>
completes only once. You choose the value to pass. For example, An
issue, such as an network outage, might prevent you from getting a
response from C<StopModel>. In this case, safely retry your call to
C<StopModel> by using the same C<ClientToken> parameter value. An error
occurs if the other input parameters are not the same as in the first
request. Using a different value for C<ClientToken> is considered a new
call to C<StopModel>. An idempotency token is active for 8 hours.



=head2 B<REQUIRED> ModelVersion => Str

The version of the model that you want to stop.



=head2 B<REQUIRED> ProjectName => Str

The name of the project that contains the model that you want to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopModel in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

