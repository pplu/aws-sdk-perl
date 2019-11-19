# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::EventDescriptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_EventDescription/;
  has Events => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_EventDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Events' => {
                             'type' => 'ArrayRef[ElasticBeanstalk_EventDescription]',
                             'class' => 'Paws::ElasticBeanstalk::EventDescription'
                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EventDescriptionsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[ElasticBeanstalk_EventDescription]

A list of EventDescription.


=head2 NextToken => Str

If returned, this indicates that there are more results to obtain. Use
this token in the next DescribeEvents call to get the next batch of
events.


=head2 _request_id => Str


=cut

