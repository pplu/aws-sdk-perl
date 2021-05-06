
package Paws::SageMaker::DescribeApp;
  use Moose;
  has AppName => (is => 'ro', isa => 'Str', required => 1);
  has AppType => (is => 'ro', isa => 'Str', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeApp - Arguments for method DescribeApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeAppResponse = $api . sagemaker->DescribeApp(
      AppName         => 'MyAppName',
      AppType         => 'JupyterServer',
      DomainId        => 'MyDomainId',
      UserProfileName => 'MyUserProfileName',

    );

    # Results:
    my $AppArn        = $DescribeAppResponse->AppArn;
    my $AppName       = $DescribeAppResponse->AppName;
    my $AppType       = $DescribeAppResponse->AppType;
    my $CreationTime  = $DescribeAppResponse->CreationTime;
    my $DomainId      = $DescribeAppResponse->DomainId;
    my $FailureReason = $DescribeAppResponse->FailureReason;
    my $LastHealthCheckTimestamp =
      $DescribeAppResponse->LastHealthCheckTimestamp;
    my $LastUserActivityTimestamp =
      $DescribeAppResponse->LastUserActivityTimestamp;
    my $ResourceSpec    = $DescribeAppResponse->ResourceSpec;
    my $Status          = $DescribeAppResponse->Status;
    my $UserProfileName = $DescribeAppResponse->UserProfileName;

    # Returns a L<Paws::SageMaker::DescribeAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppName => Str

The name of the app.



=head2 B<REQUIRED> AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"TensorBoard">

=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 B<REQUIRED> UserProfileName => Str

The user profile name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

