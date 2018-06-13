
package Paws::IoT::StartThingRegistrationTask;
  use Moose;
  has InputFileBucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileBucket', required => 1);
  has InputFileKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileKey', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartThingRegistrationTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-registration-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::StartThingRegistrationTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartThingRegistrationTask - Arguments for method StartThingRegistrationTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartThingRegistrationTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method StartThingRegistrationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartThingRegistrationTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $StartThingRegistrationTaskResponse = $iot->StartThingRegistrationTask(
      InputFileBucket => 'MyRegistryS3BucketName',
      InputFileKey    => 'MyRegistryS3KeyName',
      RoleArn         => 'MyRoleArn',
      TemplateBody    => 'MyTemplateBody',

    );

    # Results:
    my $TaskId = $StartThingRegistrationTaskResponse->TaskId;

    # Returns a L<Paws::IoT::StartThingRegistrationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/StartThingRegistrationTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputFileBucket => Str

The S3 bucket that contains the input file.



=head2 B<REQUIRED> InputFileKey => Str

The name of input file within the S3 bucket. This file contains a
newline delimited JSON file. Each line contains the parameter values to
provision one device (thing).



=head2 B<REQUIRED> RoleArn => Str

The IAM role ARN that grants permission the input file.



=head2 B<REQUIRED> TemplateBody => Str

The provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartThingRegistrationTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

