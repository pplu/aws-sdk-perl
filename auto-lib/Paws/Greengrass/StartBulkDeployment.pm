
package Paws::Greengrass::StartBulkDeployment;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has InputFileUri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBulkDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/bulk/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::StartBulkDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::StartBulkDeployment - Arguments for method StartBulkDeployment on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBulkDeployment on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method StartBulkDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBulkDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $StartBulkDeploymentResponse = $greengrass->StartBulkDeployment(
      AmznClientToken  => 'My__string',    # OPTIONAL
      ExecutionRoleArn => 'My__string',    # OPTIONAL
      InputFileUri     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $BulkDeploymentArn = $StartBulkDeploymentResponse->BulkDeploymentArn;
    my $BulkDeploymentId  = $StartBulkDeploymentResponse->BulkDeploymentId;

    # Returns a L<Paws::Greengrass::StartBulkDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/StartBulkDeployment>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 ExecutionRoleArn => Str

The ARN of the execution role to associate with the bulk deployment
operation. This IAM role must allow the ''greengrass:CreateDeployment''
action for all group versions that are listed in the input file. This
IAM role must have access to the S3 bucket containing the input file.



=head2 InputFileUri => Str

The URI of the input file contained in the S3 bucket. The execution
role must have ''getObject'' permissions on this bucket to access the
input file. The input file is a JSON-serialized, line delimited file
with UTF-8 encoding that provides a list of group and version IDs and
the deployment type. This file must be less than 100 MB. Currently, AWS
IoT Greengrass supports only ''NewDeployment'' deployment types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBulkDeployment in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

