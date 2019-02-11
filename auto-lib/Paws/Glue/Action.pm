package Paws::Glue::Action;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has JobName => (is => 'ro', isa => 'Str');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Action object:

  $service_obj->Method(Att1 => { Arguments => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->Arguments

=head1 DESCRIPTION

Defines an action to be initiated by a trigger.

=head1 ATTRIBUTES


=head2 Arguments => L<Paws::Glue::GenericMap>

  Arguments to be passed to the job run.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job
arguments, see the Calling AWS Glue APIs in Python
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set
up your job, see the Special Parameters Used by AWS Glue
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.


=head2 JobName => Str

  The name of a job to be executed.


=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

  Specifies configuration properties of a job run notification.


=head2 SecurityConfiguration => Str

  The name of the SecurityConfiguration structure to be used with this
action.


=head2 Timeout => Int

  The JobRun timeout in minutes. This is the maximum time that a job run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours). This overrides the
timeout value set in the parent job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

