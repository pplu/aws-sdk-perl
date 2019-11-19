# Generated from json/callresult_class.tt

package Paws::DMS::RefreshSchemasResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_RefreshSchemasStatus/;
  has RefreshSchemasStatus => (is => 'ro', isa => DMS_RefreshSchemasStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RefreshSchemasStatus' => {
                                           'type' => 'DMS_RefreshSchemasStatus',
                                           'class' => 'Paws::DMS::RefreshSchemasStatus'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::RefreshSchemasResponse

=head1 ATTRIBUTES


=head2 RefreshSchemasStatus => DMS_RefreshSchemasStatus

The status of the refreshed schema.


=head2 _request_id => Str


=cut

1;