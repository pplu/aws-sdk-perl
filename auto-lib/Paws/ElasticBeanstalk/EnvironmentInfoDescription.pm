package Paws::ElasticBeanstalk::EnvironmentInfoDescription;
  use Moose;
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SampleTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentInfoDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EnvironmentInfoDescription object:

  $service_obj->Method(Att1 => { Ec2InstanceId => $value, ..., SampleTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EnvironmentInfoDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Ec2InstanceId

=head1 DESCRIPTION

The information retrieved from the Amazon EC2 instances.

=head1 ATTRIBUTES


=head2 Ec2InstanceId => Str

  The Amazon EC2 Instance ID for this information.


=head2 InfoType => Str

  The type of information retrieved.


=head2 Message => Str

  The retrieved information. Currently contains a presigned Amazon S3
URL. The files are deleted after 15 minutes.

Anyone in possession of this URL can access the files before they are
deleted. Make the URL available only to trusted parties.


=head2 SampleTimestamp => Str

  The time stamp when this information was retrieved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

