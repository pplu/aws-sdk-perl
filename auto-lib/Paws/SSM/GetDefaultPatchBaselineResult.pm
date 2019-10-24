# Generated from json/callresult_class.tt

package Paws::SSM::GetDefaultPatchBaselineResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has BaselineId => (is => 'ro', isa => Str);
  has OperatingSystem => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OperatingSystem' => {
                                      'type' => 'Str'
                                    },
               'BaselineId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDefaultPatchBaselineResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the default patch baseline.


=head2 OperatingSystem => Str

The operating system for the returned patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">
=head2 _request_id => Str


=cut

1;