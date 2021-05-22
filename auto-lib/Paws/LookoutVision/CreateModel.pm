
package Paws::LookoutVision::CreateModel;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::LookoutVision::OutputConfig', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutVision::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::CreateModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateModel - Arguments for method CreateModel on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $CreateModelResponse = $lookoutvision->CreateModel(
      OutputConfig => {
        S3Location => {
          Bucket => 'MyS3BucketName',    # min: 3, max: 63
          Prefix => 'MyS3KeyPrefix',     # max: 1024; OPTIONAL
        },

      },
      ProjectName => 'MyProjectName',
      ClientToken => 'MyClientToken',                # OPTIONAL
      Description => 'MyModelDescriptionMessage',    # OPTIONAL
      KmsKeyId    => 'MyKmsKeyId',                   # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',                       # min: 1, max: 128
          Value => 'MyTagValue',                     # max: 256

        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $ModelMetadata = $CreateModelResponse->ModelMetadata;

    # Returns a L<Paws::LookoutVision::CreateModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/CreateModel>

=head1 ATTRIBUTES


=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to
C<CreateModel> completes only once. You choose the value to pass. For
example, An issue, such as an network outage, might prevent you from
getting a response from C<CreateModel>. In this case, safely retry your
call to C<CreateModel> by using the same C<ClientToken> parameter
value. An error occurs if the other input parameters are not the same
as in the first request. Using a different value for C<ClientToken> is
considered a new call to C<CreateModel>. An idempotency token is active
for 8 hours.



=head2 Description => Str

A description for the version of the model.



=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service (AWS KMS) customer
master key (CMK). The key is used to encrypt training and test images
copied into the service for model training. Your source images are
unaffected. If this parameter is not specified, the copied images are
encrypted by a key that AWS owns and manages.



=head2 B<REQUIRED> OutputConfig => L<Paws::LookoutVision::OutputConfig>

The location where Amazon Lookout for Vision saves the training
results.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in which you want to create a model version.



=head2 Tags => ArrayRef[L<Paws::LookoutVision::Tag>]

A set of tags (key-value pairs) that you want to attach to the model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

