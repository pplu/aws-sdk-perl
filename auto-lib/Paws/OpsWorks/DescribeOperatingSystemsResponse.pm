# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeOperatingSystemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_OperatingSystem/;
  has OperatingSystems => (is => 'ro', isa => ArrayRef[OpsWorks_OperatingSystem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OperatingSystems' => {
                                       'class' => 'Paws::OpsWorks::OperatingSystem',
                                       'type' => 'ArrayRef[OpsWorks_OperatingSystem]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeOperatingSystemsResponse

=head1 ATTRIBUTES


=head2 OperatingSystems => ArrayRef[OpsWorks_OperatingSystem]

Contains information in response to a C<DescribeOperatingSystems>
request.


=head2 _request_id => Str


=cut

1;