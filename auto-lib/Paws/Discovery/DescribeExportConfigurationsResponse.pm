# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeExportConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_ExportInfo/;
  has ExportsInfo => (is => 'ro', isa => ArrayRef[Discovery_ExportInfo]);
  has NextToken => (is => 'ro', isa => Str);

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
               'ExportsInfo' => {
                                  'class' => 'Paws::Discovery::ExportInfo',
                                  'type' => 'ArrayRef[Discovery_ExportInfo]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ExportsInfo' => 'exportsInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportConfigurationsResponse

=head1 ATTRIBUTES


=head2 ExportsInfo => ArrayRef[Discovery_ExportInfo]




=head2 NextToken => Str

The token from the previous call to describe-export-tasks.


=head2 _request_id => Str


=cut

1;