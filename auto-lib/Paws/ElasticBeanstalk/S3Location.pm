package Paws::ElasticBeanstalk::S3Location;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::S3Location object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

The bucket and key of an item stored in Amazon S3.

=head1 ATTRIBUTES


=head2 S3Bucket => Str

  The Amazon S3 bucket where the data is located.


=head2 S3Key => Str

  The Amazon S3 key where the data is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

