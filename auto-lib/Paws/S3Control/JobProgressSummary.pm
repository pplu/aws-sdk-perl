# Generated from default/object.tt
package Paws::S3Control::JobProgressSummary;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::S3Control::Types qw//;
  has NumberOfTasksFailed => (is => 'ro', isa => Int);
  has NumberOfTasksSucceeded => (is => 'ro', isa => Int);
  has TotalNumberOfTasks => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TotalNumberOfTasks' => {
                                         'type' => 'Int'
                                       },
               'NumberOfTasksFailed' => {
                                          'type' => 'Int'
                                        },
               'NumberOfTasksSucceeded' => {
                                             'type' => 'Int'
                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobProgressSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobProgressSummary object:

  $service_obj->Method(Att1 => { NumberOfTasksFailed => $value, ..., TotalNumberOfTasks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobProgressSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfTasksFailed

=head1 DESCRIPTION

Describes the total number of tasks that the specified job has
executed, the number of tasks that succeeded, and the number of tasks
that failed.

=head1 ATTRIBUTES


=head2 NumberOfTasksFailed => Int

  


=head2 NumberOfTasksSucceeded => Int

  


=head2 TotalNumberOfTasks => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

