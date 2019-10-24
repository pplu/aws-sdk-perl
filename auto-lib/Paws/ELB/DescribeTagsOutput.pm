# Generated from callresult_class.tt

package Paws::ELB::DescribeTagsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_TagDescription/;
  has TagDescriptions => (is => 'ro', isa => ArrayRef[ELB_TagDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagDescriptions' => {
                                      'class' => 'Paws::ELB::TagDescription',
                                      'type' => 'ArrayRef[ELB_TagDescription]'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeTagsOutput

=head1 ATTRIBUTES


=head2 TagDescriptions => ArrayRef[ELB_TagDescription]

Information about the tags.


=head2 _request_id => Str


=cut

