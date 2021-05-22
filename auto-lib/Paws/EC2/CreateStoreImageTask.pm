
package Paws::EC2::CreateStoreImageTask;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has S3ObjectTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::S3ObjectTag]', traits => ['NameInRequest'], request_name => 'S3ObjectTag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStoreImageTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateStoreImageTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateStoreImageTask - Arguments for method CreateStoreImageTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStoreImageTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateStoreImageTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStoreImageTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateStoreImageTaskResult = $ec2->CreateStoreImageTask(
      Bucket       => 'MyString',
      ImageId      => 'MyImageId',
      DryRun       => 1,             # OPTIONAL
      S3ObjectTags => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                             # OPTIONAL
    );

    # Results:
    my $ObjectKey = $CreateStoreImageTaskResult->ObjectKey;

    # Returns a L<Paws::EC2::CreateStoreImageTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateStoreImageTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the S3 bucket in which the AMI object will be stored. The
bucket must be in the Region in which the request is being made. The
AMI object appears in the bucket only after the upload task has
completed.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

The ID of the AMI.



=head2 S3ObjectTags => ArrayRef[L<Paws::EC2::S3ObjectTag>]

The tags to apply to the AMI object that will be stored in the S3
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStoreImageTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

