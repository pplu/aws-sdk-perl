package Paws::IoT::JobExecutionsRolloutConfig;
  use Moose;
  has ExponentialRate => (is => 'ro', isa => 'Paws::IoT::ExponentialRolloutRate', request_name => 'exponentialRate', traits => ['NameInRequest']);
  has MaximumPerMinute => (is => 'ro', isa => 'Int', request_name => 'maximumPerMinute', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecutionsRolloutConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecutionsRolloutConfig object:

  $service_obj->Method(Att1 => { ExponentialRate => $value, ..., MaximumPerMinute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecutionsRolloutConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExponentialRate

=head1 DESCRIPTION

Allows you to create a staged rollout of a job.

=head1 ATTRIBUTES


=head2 ExponentialRate => L<Paws::IoT::ExponentialRolloutRate>

  The rate of increase for a job rollout. This parameter allows you to
define an exponential rate for a job rollout.


=head2 MaximumPerMinute => Int

  The maximum number of things that will be notified of a pending job,
per minute. This parameter allows you to create a staged rollout.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

