# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DiscoverInputSchemaResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_SourceSchema/;
  has InputSchema => (is => 'ro', isa => KinesisAnalyticsV2_SourceSchema);
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
                                  'class' => 'Paws::KinesisAnalyticsV2::SourceSchema',
                                  'type' => 'KinesisAnalyticsV2_SourceSchema'
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

Paws::KinesisAnalyticsV2::DiscoverInputSchemaResponse

=head1 ATTRIBUTES


=head2 InputSchema => KinesisAnalyticsV2_SourceSchema

The schema inferred from the streaming source. It identifies the format
of the data in the streaming source and how each data element maps to
corresponding columns in the in-application stream that you can create.


=head2 ParsedInputRecords => ArrayRef[ArrayRef[Str|Undef]]

An array of elements, where each element corresponds to a row in a
stream record (a stream record can have more than one row).


=head2 ProcessedInputRecords => ArrayRef[Str|Undef]

The stream data that was modified by the processor specified in the
C<InputProcessingConfiguration> parameter.


=head2 RawInputRecords => ArrayRef[Str|Undef]

The raw stream data that was sampled to infer the schema.


=head2 _request_id => Str


=cut

1;