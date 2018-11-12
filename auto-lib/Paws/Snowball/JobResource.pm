package Paws::Snowball::JobResource;
  use Moose;
  has Ec2AmiResources => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::Ec2AmiResource]');
  has LambdaResources => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::LambdaResource]');
  has S3Resources => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::S3Resource]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::JobResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::JobResource object:

  $service_obj->Method(Att1 => { Ec2AmiResources => $value, ..., S3Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::JobResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Ec2AmiResources

=head1 DESCRIPTION

Contains an array of AWS resource objects. Each object represents an
Amazon S3 bucket, an AWS Lambda function, or an Amazon Machine Image
(AMI) based on Amazon EC2 that is associated with a particular job.

=head1 ATTRIBUTES


=head2 Ec2AmiResources => ArrayRef[L<Paws::Snowball::Ec2AmiResource>]

  The Amazon Machine Images (AMIs) associated with this job.


=head2 LambdaResources => ArrayRef[L<Paws::Snowball::LambdaResource>]

  The Python-language Lambda functions for this job.


=head2 S3Resources => ArrayRef[L<Paws::Snowball::S3Resource>]

  An array of C<S3Resource> objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

