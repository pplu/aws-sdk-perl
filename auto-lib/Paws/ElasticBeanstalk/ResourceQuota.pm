package Paws::ElasticBeanstalk::ResourceQuota;
  use Moose;
  has Maximum => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ResourceQuota

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ResourceQuota object:

  $service_obj->Method(Att1 => { Maximum => $value, ..., Maximum => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ResourceQuota object:

  $result = $service_obj->Method(...);
  $result->Att1->Maximum

=head1 DESCRIPTION

The AWS Elastic Beanstalk quota information for a single resource type
in an AWS account. It reflects the resource's limits for this account.

=head1 ATTRIBUTES


=head2 Maximum => Int

  The maximum number of instances of this Elastic Beanstalk resource type
that an AWS account can use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

