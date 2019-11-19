# Generated from callresult_class.tt

package Paws::RedShift::CustomerStorageMessage;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::RedShift::Types qw//;
  has TotalBackupSizeInMegaBytes => (is => 'ro', isa => Num);
  has TotalProvisionedStorageInMegaBytes => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TotalBackupSizeInMegaBytes' => {
                                                 'type' => 'Num'
                                               },
               'TotalProvisionedStorageInMegaBytes' => {
                                                         'type' => 'Num'
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

Paws::RedShift::CustomerStorageMessage

=head1 ATTRIBUTES


=head2 TotalBackupSizeInMegaBytes => Num

The total amount of storage currently used for snapshots.


=head2 TotalProvisionedStorageInMegaBytes => Num

The total amount of storage currently provisioned.


=head2 _request_id => Str


=cut

