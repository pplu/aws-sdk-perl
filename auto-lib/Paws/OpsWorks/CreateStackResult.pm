# Generated from json/callresult_class.tt

package Paws::OpsWorks::CreateStackResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has StackId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackId' => {
                              'type' => 'Str'
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

Paws::OpsWorks::CreateStackResult

=head1 ATTRIBUTES


=head2 StackId => Str

The stack ID, which is an opaque string that you use to identify the
stack when performing actions such as C<DescribeStacks>.


=head2 _request_id => Str


=cut

1;