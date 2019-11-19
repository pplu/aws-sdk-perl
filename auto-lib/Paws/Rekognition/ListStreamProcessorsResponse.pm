# Generated from json/callresult_class.tt

package Paws::Rekognition::ListStreamProcessorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_StreamProcessor/;
  has NextToken => (is => 'ro', isa => Str);
  has StreamProcessors => (is => 'ro', isa => ArrayRef[Rekognition_StreamProcessor]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StreamProcessors' => {
                                       'type' => 'ArrayRef[Rekognition_StreamProcessor]',
                                       'class' => 'Paws::Rekognition::StreamProcessor'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListStreamProcessorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of stream processors.


=head2 StreamProcessors => ArrayRef[Rekognition_StreamProcessor]

List of stream processors that you have created.


=head2 _request_id => Str


=cut

1;