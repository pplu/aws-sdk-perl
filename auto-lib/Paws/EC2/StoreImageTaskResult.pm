package Paws::EC2::StoreImageTaskResult;
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str', request_name => 'amiId', traits => ['NameInRequest']);
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest']);
  has ProgressPercentage => (is => 'ro', isa => 'Int', request_name => 'progressPercentage', traits => ['NameInRequest']);
  has S3objectKey => (is => 'ro', isa => 'Str', request_name => 's3objectKey', traits => ['NameInRequest']);
  has StoreTaskFailureReason => (is => 'ro', isa => 'Str', request_name => 'storeTaskFailureReason', traits => ['NameInRequest']);
  has StoreTaskState => (is => 'ro', isa => 'Str', request_name => 'storeTaskState', traits => ['NameInRequest']);
  has TaskStartTime => (is => 'ro', isa => 'Str', request_name => 'taskStartTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StoreImageTaskResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::StoreImageTaskResult object:

  $service_obj->Method(Att1 => { AmiId => $value, ..., TaskStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::StoreImageTaskResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmiId => Str

The ID of the AMI that is being stored.


=head2 Bucket => Str

The name of the S3 bucket that contains the stored AMI object.


=head2 ProgressPercentage => Int

The progress of the task as a percentage.


=head2 S3objectKey => Str

The name of the stored AMI object in the bucket.


=head2 StoreTaskFailureReason => Str

If the tasks fails, the reason for the failure is returned. If the task
succeeds, C<null> is returned.


=head2 StoreTaskState => Str

The state of the store task (C<InProgress>, C<Completed>, or
C<Failed>).


=head2 TaskStartTime => Str

The time the task started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
