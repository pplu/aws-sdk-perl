# Generated from json/callresult_class.tt

package Paws::SSM::DescribeInstancePatchesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_PatchComplianceData/;
  has NextToken => (is => 'ro', isa => Str);
  has Patches => (is => 'ro', isa => ArrayRef[SSM_PatchComplianceData]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Patches' => {
                              'class' => 'Paws::SSM::PatchComplianceData',
                              'type' => 'ArrayRef[SSM_PatchComplianceData]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePatchesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Patches => ArrayRef[SSM_PatchComplianceData]

Each entry in the array is a structure containing:

Title (string)

KBId (string)

Classification (string)

Severity (string)

State (string, such as "INSTALLED" or "FAILED")

InstalledTime (DateTime)

InstalledBy (string)


=head2 _request_id => Str


=cut

1;