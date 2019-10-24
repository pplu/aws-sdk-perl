# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeContinuousExportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_ContinuousExportDescription/;
  has Descriptions => (is => 'ro', isa => ArrayRef[Discovery_ContinuousExportDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Descriptions' => {
                                   'class' => 'Paws::Discovery::ContinuousExportDescription',
                                   'type' => 'ArrayRef[Discovery_ContinuousExportDescription]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Descriptions' => 'descriptions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeContinuousExportsResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[Discovery_ContinuousExportDescription]

A list of continuous export descriptions.


=head2 NextToken => Str

The token from the previous call to C<DescribeExportTasks>.


=head2 _request_id => Str


=cut

1;