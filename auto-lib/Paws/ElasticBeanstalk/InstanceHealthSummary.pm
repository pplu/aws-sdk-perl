package Paws::ElasticBeanstalk::InstanceHealthSummary;
  use Moose;
  has Degraded => (is => 'ro', isa => 'Int');
  has Info => (is => 'ro', isa => 'Int');
  has NoData => (is => 'ro', isa => 'Int');
  has Ok => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Severe => (is => 'ro', isa => 'Int');
  has Unknown => (is => 'ro', isa => 'Int');
  has Warning => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::InstanceHealthSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::InstanceHealthSummary object:

  $service_obj->Method(Att1 => { Degraded => $value, ..., Warning => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::InstanceHealthSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Degraded

=head1 DESCRIPTION

Represents summary information about the health of an instance. For
more information, see Health Colors and Statuses
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html).

=head1 ATTRIBUTES


=head2 Degraded => Int

  B<Red.> The health agent is reporting a high number of request failures
or other issues for an instance or environment.


=head2 Info => Int

  B<Green.> An operation is in progress on an instance.


=head2 NoData => Int

  B<Grey.> AWS Elastic Beanstalk and the health agent are reporting no
data on an instance.


=head2 Ok => Int

  B<Green.> An instance is passing health checks and the health agent is
not reporting any problems.


=head2 Pending => Int

  B<Grey.> An operation is in progress on an instance within the command
timeout.


=head2 Severe => Int

  B<Red.> The health agent is reporting a very high number of request
failures or other issues for an instance or environment.


=head2 Unknown => Int

  B<Grey.> AWS Elastic Beanstalk and the health agent are reporting an
insufficient amount of data on an instance.


=head2 Warning => Int

  B<Yellow.> The health agent is reporting a moderate number of request
failures or other issues for an instance or environment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

