# Generated from json/callresult_class.tt

package Paws::Glue::GetPartitionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Partition/;
  has Partition => (is => 'ro', isa => Glue_Partition);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Partition' => {
                                'class' => 'Paws::Glue::Partition',
                                'type' => 'Glue_Partition'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitionResponse

=head1 ATTRIBUTES


=head2 Partition => Glue_Partition

The requested information, in the form of a C<Partition> object.


=head2 _request_id => Str


=cut

1;