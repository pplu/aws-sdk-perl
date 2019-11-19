# Generated from json/callresult_class.tt

package Paws::CloudTrail::ListTrailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_TrailInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has Trails => (is => 'ro', isa => ArrayRef[CloudTrail_TrailInfo]);

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
               'Trails' => {
                             'type' => 'ArrayRef[CloudTrail_TrailInfo]',
                             'class' => 'Paws::CloudTrail::TrailInfo'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListTrailsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Trails => ArrayRef[CloudTrail_TrailInfo]

Returns the name, ARN, and home region of trails in the current
account.


=head2 _request_id => Str


=cut

1;