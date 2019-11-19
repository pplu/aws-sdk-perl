# Generated from json/callresult_class.tt

package Paws::Firehose::PutRecordOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Firehose::Types qw//;
  has Encrypted => (is => 'ro', isa => Bool);
  has RecordId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RecordId' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'RecordId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordOutput

=head1 ATTRIBUTES


=head2 Encrypted => Bool

Indicates whether server-side encryption (SSE) was enabled during this
operation.


=head2 B<REQUIRED> RecordId => Str

The ID of the record.


=head2 _request_id => Str


=cut

1;