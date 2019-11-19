
package Paws::AppSync::GetDataSourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_DataSource/;
  has DataSource => (is => 'ro', isa => AppSync_DataSource);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DataSource' => {
                                 'type' => 'AppSync_DataSource',
                                 'class' => 'Paws::AppSync::DataSource'
                               }
             },
  'NameInRequest' => {
                       'DataSource' => 'dataSource'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSource => AppSync_DataSource

The C<DataSource> object.


=head2 _request_id => Str


=cut

