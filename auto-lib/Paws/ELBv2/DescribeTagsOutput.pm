# Generated from callresult_class.tt

package Paws::ELBv2::DescribeTagsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_TagDescription/;
  has TagDescriptions => (is => 'ro', isa => ArrayRef[ELBv2_TagDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagDescriptions' => {
                                      'type' => 'ArrayRef[ELBv2_TagDescription]',
                                      'class' => 'Paws::ELBv2::TagDescription'
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

Paws::ELBv2::DescribeTagsOutput

=head1 ATTRIBUTES


=head2 TagDescriptions => ArrayRef[ELBv2_TagDescription]

Information about the tags.


=head2 _request_id => Str


=cut

