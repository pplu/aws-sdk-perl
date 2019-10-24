# Generated from json/callresult_class.tt

package Paws::KinesisAnalytics::DiscoverInputSchemaResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_SourceSchema/;
  has InputSchema => (is => 'ro', isa => KinesisAnalytics_SourceSchema);
  has ParsedInputRecords => (is => 'ro', isa => ArrayRef[ArrayRef[Str|Undef]]);
  has ProcessedInputRecords => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RawInputRecords => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProcessedInputRecords' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RawInputRecords' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'InputSchema' => {
                                  'class' => 'Paws::KinesisAnalytics::SourceSchema',
                                  'type' => 'KinesisAnalytics_SourceSchema'
                                },
               'ParsedInputRecords' => {
                                         'type' => 'ArrayRef[ArrayRef[Str|Undef]]'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DiscoverInputSchemaResponse

=head1 ATTRIBUTES


=head2 InputSchema => KinesisAnalytics_SourceSchema

Schema inferred from the streaming source. It identifies the format of
the data in the streaming source and how each data element maps to
corresponding columns in the in-application stream that you can create.


=head2 ParsedInputRecords => ArrayRef[ArrayRef[Str|Undef]]

An array of elements, where each element corresponds to a row in a
stream record (a stream record can have more than one row).


=head2 ProcessedInputRecords => ArrayRef[Str|Undef]

Stream data that was modified by the processor specified in the
C<InputProcessingConfiguration> parameter.


=head2 RawInputRecords => ArrayRef[Str|Undef]

Raw stream data that was sampled to infer the schema.


=head2 _request_id => Str


=cut

1;