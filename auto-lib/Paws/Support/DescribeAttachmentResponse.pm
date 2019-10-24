# Generated from json/callresult_class.tt

package Paws::Support::DescribeAttachmentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw/Support_Attachment/;
  has Attachment => (is => 'ro', isa => Support_Attachment);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Attachment' => {
                                 'class' => 'Paws::Support::Attachment',
                                 'type' => 'Support_Attachment'
                               }
             },
  'NameInRequest' => {
                       'Attachment' => 'attachment'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => Support_Attachment

The attachment content and file name.


=head2 _request_id => Str


=cut

1;