# Generated from callresult_class.tt

package Paws::CloudWatch::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[CloudWatch_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CloudWatch::Tag',
                           'type' => 'ArrayRef[CloudWatch_Tag]'
                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[CloudWatch_Tag]

The list of tag keys and values associated with the resource you
specified.


=head2 _request_id => Str


=cut

