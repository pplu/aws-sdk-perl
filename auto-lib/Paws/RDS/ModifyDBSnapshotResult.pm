# Generated from callresult_class.tt

package Paws::RDS::ModifyDBSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBSnapshot/;
  has DBSnapshot => (is => 'ro', isa => RDS_DBSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSnapshot' => {
                                 'type' => 'RDS_DBSnapshot',
                                 'class' => 'Paws::RDS::DBSnapshot'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSnapshotResult

=head1 ATTRIBUTES


=head2 DBSnapshot => RDS_DBSnapshot




=head2 _request_id => Str


=cut

