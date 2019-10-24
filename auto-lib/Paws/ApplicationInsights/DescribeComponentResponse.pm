# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::DescribeComponentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_ApplicationComponent/;
  has ApplicationComponent => (is => 'ro', isa => ApplicationInsights_ApplicationComponent);
  has ResourceList => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationComponent' => {
                                           'class' => 'Paws::ApplicationInsights::ApplicationComponent',
                                           'type' => 'ApplicationInsights_ApplicationComponent'
                                         },
               'ResourceList' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentResponse

=head1 ATTRIBUTES


=head2 ApplicationComponent => ApplicationInsights_ApplicationComponent




=head2 ResourceList => ArrayRef[Str|Undef]

The list of resource ARNs that belong to the component.


=head2 _request_id => Str


=cut

1;