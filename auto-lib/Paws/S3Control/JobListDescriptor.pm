# Generated from default/object.tt
package Paws::S3Control::JobListDescriptor;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3Control::Types qw/S3Control_JobProgressSummary/;
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);
  has Operation => (is => 'ro', isa => Str);
  has Priority => (is => 'ro', isa => Int);
  has ProgressSummary => (is => 'ro', isa => S3Control_JobProgressSummary);
  has Status => (is => 'ro', isa => Str);
  has TerminationDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TerminationDate' => {
                                      'type' => 'Str'
                                    },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'ProgressSummary' => {
                                      'class' => 'Paws::S3Control::JobProgressSummary',
                                      'type' => 'S3Control_JobProgressSummary'
                                    },
               'Priority' => {
                               'type' => 'Int'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          },
               'Operation' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobListDescriptor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobListDescriptor object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TerminationDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobListDescriptor object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Contains the configuration and status information for a single job
retrieved as part of a job list.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  A timestamp indicating when the specified job was created.


=head2 Description => Str

  The user-specified description that was included in the specified job's
C<Create Job> request.


=head2 JobId => Str

  The ID for the specified job.


=head2 Operation => Str

  The operation that the specified job is configured to run on each
object listed in the manifest.


=head2 Priority => Int

  The current priority for the specified job.


=head2 ProgressSummary => S3Control_JobProgressSummary

  Describes the total number of tasks that the specified job has
executed, the number of tasks that succeeded, and the number of tasks
that failed.


=head2 Status => Str

  The specified job's current status.


=head2 TerminationDate => Str

  A timestamp indicating when the specified job terminated. A job's
termination date is the date and time when it succeeded, failed, or was
canceled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

