# Generated from json/callresult_class.tt

package Paws::Cloud9::DescribeEnvironmentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Cloud9::Types qw/Cloud9_Environment/;
  has Environments => (is => 'ro', isa => ArrayRef[Cloud9_Environment]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Environments' => {
                                   'class' => 'Paws::Cloud9::Environment',
                                   'type' => 'ArrayRef[Cloud9_Environment]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Environments' => 'environments'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentsResult

=head1 ATTRIBUTES


=head2 Environments => ArrayRef[Cloud9_Environment]

Information about the environments that are returned.


=head2 _request_id => Str


=cut

1;