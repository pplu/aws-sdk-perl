# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_SolutionStackDescription/;
  has SolutionStackDetails => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_SolutionStackDescription]);
  has SolutionStacks => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SolutionStacks' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SolutionStackDetails' => {
                                           'type' => 'ArrayRef[ElasticBeanstalk_SolutionStackDescription]',
                                           'class' => 'Paws::ElasticBeanstalk::SolutionStackDescription'
                                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage

=head1 ATTRIBUTES


=head2 SolutionStackDetails => ArrayRef[ElasticBeanstalk_SolutionStackDescription]

A list of available solution stacks and their SolutionStackDescription.


=head2 SolutionStacks => ArrayRef[Str|Undef]

A list of available solution stacks.


=head2 _request_id => Str


=cut

