# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ConfigurationOptionsDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ConfigurationOptionDescription/;
  has Options => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ConfigurationOptionDescription]);
  has PlatformArn => (is => 'ro', isa => Str);
  has SolutionStackName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Options' => {
                              'class' => 'Paws::ElasticBeanstalk::ConfigurationOptionDescription',
                              'type' => 'ArrayRef[ElasticBeanstalk_ConfigurationOptionDescription]'
                            },
               'PlatformArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SolutionStackName' => {
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

Paws::ElasticBeanstalk::ConfigurationOptionsDescription

=head1 ATTRIBUTES


=head2 Options => ArrayRef[ElasticBeanstalk_ConfigurationOptionDescription]

A list of ConfigurationOptionDescription.


=head2 PlatformArn => Str

The ARN of the platform.


=head2 SolutionStackName => Str

The name of the solution stack these configuration options belong to.


=head2 _request_id => Str


=cut

