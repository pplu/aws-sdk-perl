
package Paws::DataExchange::GetJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_ResponseDetails DataExchange_JobError/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Details => (is => 'ro', isa => DataExchange_ResponseDetails);
  has Errors => (is => 'ro', isa => ArrayRef[DataExchange_JobError]);
  has Id => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'State' => {
                            'type' => 'Str'
                          },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Errors' => {
                             'class' => 'Paws::DataExchange::JobError',
                             'type' => 'ArrayRef[DataExchange_JobError]'
                           },
               'Details' => {
                              'class' => 'Paws::DataExchange::ResponseDetails',
                              'type' => 'DataExchange_ResponseDetails'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'Type' => {
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

Paws::DataExchange::GetJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the job.


=head2 CreatedAt => Str

The date and time that the job was created, in ISO 8601 format.


=head2 Details => DataExchange_ResponseDetails

Details about the job.


=head2 Errors => ArrayRef[DataExchange_JobError]

The errors associated with jobs.


=head2 Id => Str

The unique identifier for the job.


=head2 State => Str

The state of the job.

Valid values are: C<"WAITING">, C<"IN_PROGRESS">, C<"ERROR">, C<"COMPLETED">, C<"CANCELLED">, C<"TIMED_OUT">
=head2 Type => Str

The job type.

Valid values are: C<"IMPORT_ASSETS_FROM_S3">, C<"IMPORT_ASSET_FROM_SIGNED_URL">, C<"EXPORT_ASSETS_TO_S3">, C<"EXPORT_ASSET_TO_SIGNED_URL">
=head2 UpdatedAt => Str

The date and time that the job was last updated, in ISO 8601 format.


=head2 _request_id => Str


=cut

