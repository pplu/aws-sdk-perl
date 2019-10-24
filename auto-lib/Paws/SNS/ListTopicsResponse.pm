# Generated from callresult_class.tt

package Paws::SNS::ListTopicsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_Topic/;
  has NextToken => (is => 'ro', isa => Str);
  has Topics => (is => 'ro', isa => ArrayRef[SNS_Topic]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Topics' => {
                             'class' => 'Paws::SNS::Topic',
                             'type' => 'ArrayRef[SNS_Topic]'
                           },
               '_request_id' => {
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

Paws::SNS::ListTopicsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to pass along to the next C<ListTopics> request. This element is
returned if there are additional topics to retrieve.


=head2 Topics => ArrayRef[SNS_Topic]

A list of topic ARNs.


=head2 _request_id => Str


=cut

