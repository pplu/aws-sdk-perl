# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ManagedAction/;
  has ManagedActions => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ManagedAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ManagedActions' => {
                                     'class' => 'Paws::ElasticBeanstalk::ManagedAction',
                                     'type' => 'ArrayRef[ElasticBeanstalk_ManagedAction]'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult

=head1 ATTRIBUTES


=head2 ManagedActions => ArrayRef[ElasticBeanstalk_ManagedAction]

A list of upcoming and in-progress managed actions.


=head2 _request_id => Str


=cut

