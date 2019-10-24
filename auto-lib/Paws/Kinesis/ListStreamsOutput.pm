# Generated from json/callresult_class.tt

package Paws::Kinesis::ListStreamsOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::Kinesis::Types qw//;
  has HasMoreStreams => (is => 'ro', isa => Bool, required => 1);
  has StreamNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamNames' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'HasMoreStreams' => {
                                     'type' => 'Bool'
                                   }
             },
  'IsRequired' => {
                    'StreamNames' => 1,
                    'HasMoreStreams' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListStreamsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> HasMoreStreams => Bool

If set to C<true>, there are more streams available to list.


=head2 B<REQUIRED> StreamNames => ArrayRef[Str|Undef]

The names of the streams that are associated with the AWS account
making the C<ListStreams> request.


=head2 _request_id => Str


=cut

1;