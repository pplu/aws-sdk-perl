# Generated from json/callresult_class.tt

package Paws::Glue::GetPartitionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Partition/;
  has NextToken => (is => 'ro', isa => Str);
  has Partitions => (is => 'ro', isa => ArrayRef[Glue_Partition]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Partitions' => {
                                 'class' => 'Paws::Glue::Partition',
                                 'type' => 'ArrayRef[Glue_Partition]'
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

Paws::Glue::GetPartitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list of partitions does not
include the last one.


=head2 Partitions => ArrayRef[Glue_Partition]

A list of requested partitions.


=head2 _request_id => Str


=cut

1;