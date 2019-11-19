# Generated from json/callresult_class.tt

package Paws::DMS::DescribeRefreshSchemasStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_RefreshSchemasStatus/;
  has RefreshSchemasStatus => (is => 'ro', isa => DMS_RefreshSchemasStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RefreshSchemasStatus' => {
                                           'class' => 'Paws::DMS::RefreshSchemasStatus',
                                           'type' => 'DMS_RefreshSchemasStatus'
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

Paws::DMS::DescribeRefreshSchemasStatusResponse

=head1 ATTRIBUTES


=head2 RefreshSchemasStatus => DMS_RefreshSchemasStatus

The status of the schema.


=head2 _request_id => Str


=cut

1;