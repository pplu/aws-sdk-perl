
package Paws::Braket::CreateQuantumTask;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceArn', required => 1);
  has DeviceParameters => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceParameters');
  has OutputS3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputS3Bucket', required => 1);
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputS3KeyPrefix', required => 1);
  has Shots => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shots', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQuantumTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quantum-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::CreateQuantumTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CreateQuantumTask - Arguments for method CreateQuantumTask on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQuantumTask on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method CreateQuantumTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQuantumTask.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $CreateQuantumTaskResponse = $braket->CreateQuantumTask(
      Action            => 'MyJsonValue',
      ClientToken       => 'MyString64',
      DeviceArn         => 'MyDeviceArn',
      OutputS3Bucket    => 'MyCreateQuantumTaskRequestOutputS3BucketString',
      OutputS3KeyPrefix => 'MyCreateQuantumTaskRequestOutputS3KeyPrefixString',
      Shots             => 1,
      DeviceParameters  =>
        'MyCreateQuantumTaskRequestDeviceParametersString',    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },                   # OPTIONAL
    );

    # Results:
    my $QuantumTaskArn = $CreateQuantumTaskResponse->QuantumTaskArn;

    # Returns a L<Paws::Braket::CreateQuantumTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/CreateQuantumTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action associated with the task.



=head2 B<REQUIRED> ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> DeviceArn => Str

The ARN of the device to run the task on.



=head2 DeviceParameters => Str

The parameters for the device to run the task on.



=head2 B<REQUIRED> OutputS3Bucket => Str

The S3 bucket to store task result files in.



=head2 B<REQUIRED> OutputS3KeyPrefix => Str

The key prefix for the location in the S3 bucket to store task results
in.



=head2 B<REQUIRED> Shots => Int

The number of shots to use for the task.



=head2 Tags => L<Paws::Braket::TagsMap>

Tags to be added to the quantum task you're creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQuantumTask in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

