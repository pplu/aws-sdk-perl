# Generated from default/object.tt
package Paws::SMS::ReplicationRun;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SMS::Types qw/SMS_ReplicationRunStageDetails/;
  has AmiId => (is => 'ro', isa => Str);
  has CompletedTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has KmsKeyId => (is => 'ro', isa => Str);
  has ReplicationRunId => (is => 'ro', isa => Str);
  has ScheduledStartTime => (is => 'ro', isa => Str);
  has StageDetails => (is => 'ro', isa => SMS_ReplicationRunStageDetails);
  has State => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'State' => {
                            'type' => 'Str'
                          },
               'ReplicationRunId' => {
                                       'type' => 'Str'
                                     },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'CompletedTime' => {
                                    'type' => 'Str'
                                  },
               'ScheduledStartTime' => {
                                         'type' => 'Str'
                                       },
               'StageDetails' => {
                                   'class' => 'Paws::SMS::ReplicationRunStageDetails',
                                   'type' => 'SMS_ReplicationRunStageDetails'
                                 },
               'AmiId' => {
                            'type' => 'Str'
                          },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'State' => 'state',
                       'ReplicationRunId' => 'replicationRunId',
                       'KmsKeyId' => 'kmsKeyId',
                       'Encrypted' => 'encrypted',
                       'Type' => 'type',
                       'CompletedTime' => 'completedTime',
                       'ScheduledStartTime' => 'scheduledStartTime',
                       'StageDetails' => 'stageDetails',
                       'AmiId' => 'amiId',
                       'StatusMessage' => 'statusMessage',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ReplicationRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ReplicationRun object:

  $service_obj->Method(Att1 => { AmiId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ReplicationRun object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiId

=head1 DESCRIPTION

Represents a replication run.

=head1 ATTRIBUTES


=head2 AmiId => Str

  The identifier of the Amazon Machine Image (AMI) from the replication
run.


=head2 CompletedTime => Str

  The completion time of the last replication run.


=head2 Description => Str

  The description of the replication run.


=head2 Encrypted => Bool

  Whether the replication run should produce encrypted AMI or not. See
also C<KmsKeyId> below.


=head2 KmsKeyId => Str

  KMS key ID for replication jobs that produce encrypted AMIs. Can be any
of the following:

=over

=item *

KMS key ID

=item *

KMS key alias

=item *

ARN referring to KMS key ID

=item *

ARN referring to KMS key alias

=back

If encrypted is I<true> but a KMS key id is not specified, the
customer's default KMS key for EBS is used.


=head2 ReplicationRunId => Str

  The identifier of the replication run.


=head2 ScheduledStartTime => Str

  The start time of the next replication run.


=head2 StageDetails => SMS_ReplicationRunStageDetails

  Details of the current stage of the replication run.


=head2 State => Str

  The state of the replication run.


=head2 StatusMessage => Str

  The description of the current status of the replication job.


=head2 Type => Str

  The type of replication run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

