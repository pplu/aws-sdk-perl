# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ManagedActionHistoryItem/;
  has ManagedActionHistoryItems => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ManagedActionHistoryItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ManagedActionHistoryItems' => {
                                                'class' => 'Paws::ElasticBeanstalk::ManagedActionHistoryItem',
                                                'type' => 'ArrayRef[ElasticBeanstalk_ManagedActionHistoryItem]'
                                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult

=head1 ATTRIBUTES


=head2 ManagedActionHistoryItems => ArrayRef[ElasticBeanstalk_ManagedActionHistoryItem]

A list of completed and failed managed actions.


=head2 NextToken => Str

A pagination token that you pass to
DescribeEnvironmentManagedActionHistory to get the next page of
results.


=head2 _request_id => Str


=cut

