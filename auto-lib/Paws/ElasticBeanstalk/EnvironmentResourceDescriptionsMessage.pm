# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_EnvironmentResourceDescription/;
  has EnvironmentResources => (is => 'ro', isa => ElasticBeanstalk_EnvironmentResourceDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EnvironmentResources' => {
                                           'type' => 'ElasticBeanstalk_EnvironmentResourceDescription',
                                           'class' => 'Paws::ElasticBeanstalk::EnvironmentResourceDescription'
                                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage

=head1 ATTRIBUTES


=head2 EnvironmentResources => ElasticBeanstalk_EnvironmentResourceDescription

A list of EnvironmentResourceDescription.


=head2 _request_id => Str


=cut

