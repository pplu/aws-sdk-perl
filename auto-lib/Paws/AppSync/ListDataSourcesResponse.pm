
package Paws::AppSync::ListDataSourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_DataSource/;
  has DataSources => (is => 'ro', isa => ArrayRef[AppSync_DataSource]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DataSources' => {
                                  'class' => 'Paws::AppSync::DataSource',
                                  'type' => 'ArrayRef[AppSync_DataSource]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DataSources' => 'dataSources'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 DataSources => ArrayRef[AppSync_DataSource]

The C<DataSource> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

