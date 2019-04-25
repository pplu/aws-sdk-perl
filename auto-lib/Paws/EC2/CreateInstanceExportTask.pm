
package Paws::EC2::CreateInstanceExportTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ExportToS3Task => (is => 'ro', isa => 'Paws::EC2::ExportToS3TaskSpecification', traits => ['NameInRequest'], request_name => 'exportToS3' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has TargetEnvironment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetEnvironment' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateInstanceExportTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInstanceExportTask - Arguments for method CreateInstanceExportTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceExportTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateInstanceExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceExportTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateInstanceExportTaskResult = $ec2->CreateInstanceExportTask(
      InstanceId     => 'MyString',
      Description    => 'MyString',    # OPTIONAL
      ExportToS3Task => {
        ContainerFormat => 'ova',        # values: ova; OPTIONAL
        DiskImageFormat => 'VMDK',       # values: VMDK, RAW, VHD; OPTIONAL
        S3Bucket        => 'MyString',
        S3Prefix        => 'MyString',
      },    # OPTIONAL
      TargetEnvironment => 'citrix',    # OPTIONAL
    );

    # Results:
    my $ExportTask = $CreateInstanceExportTaskResult->ExportTask;

    # Returns a L<Paws::EC2::CreateInstanceExportTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateInstanceExportTask>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the conversion task or the resource being exported.
The maximum length is 255 bytes.



=head2 ExportToS3Task => L<Paws::EC2::ExportToS3TaskSpecification>

The format and location for an instance export task.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 TargetEnvironment => Str

The target virtualization environment.

Valid values are: C<"citrix">, C<"vmware">, C<"microsoft">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceExportTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

