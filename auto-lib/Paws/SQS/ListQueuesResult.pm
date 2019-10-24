# Generated from callresult_class.tt

package Paws::SQS::ListQueuesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SQS::Types qw//;
  has QueueUrls => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueueUrls' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'QueueUrls' => 'QueueUrl'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListQueuesResult

=head1 ATTRIBUTES


=head2 QueueUrls => ArrayRef[Str|Undef]

A list of queue URLs, up to 1,000 entries.


=head2 _request_id => Str


=cut

