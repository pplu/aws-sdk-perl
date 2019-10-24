# Generated from callresult_class.tt

package Paws::RDS::StartActivityStreamResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RDS::Types qw//;
  has ApplyImmediately => (is => 'ro', isa => Bool);
  has KinesisStreamName => (is => 'ro', isa => Str);
  has KmsKeyId => (is => 'ro', isa => Str);
  has Mode => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplyImmediately' => {
                                       'type' => 'Bool'
                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               'KinesisStreamName' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Mode' => {
                           'type' => 'Str'
                         },
               'KmsKeyId' => {
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

Paws::RDS::StartActivityStreamResponse

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

Indicates whether or not the database activity stream will start as
soon as possible, regardless of the maintenance window for the
database.


=head2 KinesisStreamName => Str

The name of the Amazon Kinesis data stream to be used for the database
activity stream.


=head2 KmsKeyId => Str

The AWS KMS key identifier for encryption of messages in the database
activity stream.


=head2 Mode => Str

The mode of the database activity stream.

Valid values are: C<"sync">, C<"async">
=head2 Status => Str

The status of the database activity stream.

Valid values are: C<"stopped">, C<"starting">, C<"started">, C<"stopping">
=head2 _request_id => Str


=cut

