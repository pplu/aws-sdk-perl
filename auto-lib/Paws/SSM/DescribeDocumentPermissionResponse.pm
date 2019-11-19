# Generated from json/callresult_class.tt

package Paws::SSM::DescribeDocumentPermissionResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SSM::Types qw//;
  has AccountIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentPermissionResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The account IDs that have permission to use this document. The ID can
be either an AWS account or I<All>.


=head2 _request_id => Str


=cut

1;