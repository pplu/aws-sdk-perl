# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_EnvironmentInfoDescription/;
  has EnvironmentInfo => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_EnvironmentInfoDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EnvironmentInfo' => {
                                      'class' => 'Paws::ElasticBeanstalk::EnvironmentInfoDescription',
                                      'type' => 'ArrayRef[ElasticBeanstalk_EnvironmentInfoDescription]'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage

=head1 ATTRIBUTES


=head2 EnvironmentInfo => ArrayRef[ElasticBeanstalk_EnvironmentInfoDescription]

The EnvironmentInfoDescription of the environment.


=head2 _request_id => Str


=cut

