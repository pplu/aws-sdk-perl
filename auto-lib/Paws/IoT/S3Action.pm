package Paws::IoT::S3Action;
  use Moose;
  has bucketName => (is => 'ro', isa => 'Str', required => 1);
  has key => (is => 'ro', isa => 'Str', required => 1);
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::S3Action

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::S3Action object:

  $service_obj->Method(Att1 => { bucketName => $value, ..., roleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::S3Action object:

  $result = $service_obj->Method(...);
  $result->Att1->bucketName

=head1 ATTRIBUTES

=head2 B<REQUIRED> bucketName => Str

  

The S3 bucket.










=head2 B<REQUIRED> key => Str

  

The object key.










=head2 B<REQUIRED> roleArn => Str

  

The ARN of the IAM role that grants access.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

