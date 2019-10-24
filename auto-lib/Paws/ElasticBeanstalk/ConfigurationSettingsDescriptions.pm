# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ConfigurationSettingsDescription/;
  has ConfigurationSettings => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ConfigurationSettingsDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationSettings' => {
                                            'class' => 'Paws::ElasticBeanstalk::ConfigurationSettingsDescription',
                                            'type' => 'ArrayRef[ElasticBeanstalk_ConfigurationSettingsDescription]'
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

Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions

=head1 ATTRIBUTES


=head2 ConfigurationSettings => ArrayRef[ElasticBeanstalk_ConfigurationSettingsDescription]

A list of ConfigurationSettingsDescription.


=head2 _request_id => Str


=cut

