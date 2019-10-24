# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetPartitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Partition Glue_PartitionValueList/;
  has Partitions => (is => 'ro', isa => ArrayRef[Glue_Partition]);
  has UnprocessedKeys => (is => 'ro', isa => ArrayRef[Glue_PartitionValueList]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedKeys' => {
                                      'class' => 'Paws::Glue::PartitionValueList',
                                      'type' => 'ArrayRef[Glue_PartitionValueList]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Partitions' => {
                                 'class' => 'Paws::Glue::Partition',
                                 'type' => 'ArrayRef[Glue_Partition]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetPartitionResponse

=head1 ATTRIBUTES


=head2 Partitions => ArrayRef[Glue_Partition]

A list of the requested partitions.


=head2 UnprocessedKeys => ArrayRef[Glue_PartitionValueList]

A list of the partition values in the request for which partions were
not returned.


=head2 _request_id => Str


=cut

1;