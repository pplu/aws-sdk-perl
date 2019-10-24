
package Paws::MediaConnect::RemoveFlowOutputResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has FlowArn => (is => 'ro', isa => Str);
  has OutputArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'OutputArn' => 'outputArn',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowOutputResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the output you removed.


=head2 OutputArn => Str

The ARN of the output that was removed.


=head2 _request_id => Str


=cut

