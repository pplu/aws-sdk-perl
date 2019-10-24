
package Paws::IoT::DescribeThingRegistrationTaskResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has CreationDate => (is => 'ro', isa => Str);
  has FailureCount => (is => 'ro', isa => Int);
  has InputFileBucket => (is => 'ro', isa => Str);
  has InputFileKey => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has PercentageProgress => (is => 'ro', isa => Int);
  has RoleArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has SuccessCount => (is => 'ro', isa => Int);
  has TaskId => (is => 'ro', isa => Str);
  has TemplateBody => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputFileKey' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'InputFileBucket' => {
                                      'type' => 'Str'
                                    },
               'SuccessCount' => {
                                   'type' => 'Int'
                                 },
               'FailureCount' => {
                                   'type' => 'Int'
                                 },
               'PercentageProgress' => {
                                         'type' => 'Int'
                                       },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'TemplateBody' => {
                                   'type' => 'Str'
                                 },
               'TaskId' => {
                             'type' => 'Str'
                           },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Message' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'InputFileKey' => 'inputFileKey',
                       'Status' => 'status',
                       'InputFileBucket' => 'inputFileBucket',
                       'SuccessCount' => 'successCount',
                       'FailureCount' => 'failureCount',
                       'PercentageProgress' => 'percentageProgress',
                       'RoleArn' => 'roleArn',
                       'TemplateBody' => 'templateBody',
                       'TaskId' => 'taskId',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CreationDate' => 'creationDate',
                       'Message' => 'message'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingRegistrationTaskResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The task creation date.


=head2 FailureCount => Int

The number of things that failed to be provisioned.


=head2 InputFileBucket => Str

The S3 bucket that contains the input file.


=head2 InputFileKey => Str

The input file key.


=head2 LastModifiedDate => Str

The date when the task was last modified.


=head2 Message => Str

The message.


=head2 PercentageProgress => Int

The progress of the bulk provisioning task expressed as a percentage.


=head2 RoleArn => Str

The role ARN that grants access to the input file bucket.


=head2 Status => Str

The status of the bulk thing provisioning task.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Cancelled">, C<"Cancelling">
=head2 SuccessCount => Int

The number of things successfully provisioned.


=head2 TaskId => Str

The task ID.


=head2 TemplateBody => Str

The task's template.


=head2 _request_id => Str


=cut

