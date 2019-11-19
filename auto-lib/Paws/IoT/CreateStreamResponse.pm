
package Paws::IoT::CreateStreamResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has StreamArn => (is => 'ro', isa => Str);
  has StreamId => (is => 'ro', isa => Str);
  has StreamVersion => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StreamVersion' => 'streamVersion',
                       'StreamArn' => 'streamArn',
                       'StreamId' => 'streamId',
                       'Description' => 'description'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamArn' => {
                                'type' => 'Str'
                              },
               'StreamId' => {
                               'type' => 'Str'
                             },
               'StreamVersion' => {
                                    'type' => 'Int'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateStreamResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the stream.


=head2 StreamArn => Str

The stream ARN.


=head2 StreamId => Str

The stream ID.


=head2 StreamVersion => Int

The version of the stream.


=head2 _request_id => Str


=cut

