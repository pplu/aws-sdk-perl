# Generated from json/callresult_class.tt

package Paws::Glue::GetMappingResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_MappingEntry/;
  has Mapping => (is => 'ro', isa => ArrayRef[Glue_MappingEntry], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Mapping' => {
                              'type' => 'ArrayRef[Glue_MappingEntry]',
                              'class' => 'Paws::Glue::MappingEntry'
                            }
             },
  'IsRequired' => {
                    'Mapping' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMappingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mapping => ArrayRef[Glue_MappingEntry]

A list of mappings to the specified targets.


=head2 _request_id => Str


=cut

1;