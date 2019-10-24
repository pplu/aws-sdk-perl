# Generated from json/callresult_class.tt

package Paws::AppStream::StopImageBuilderResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_ImageBuilder/;
  has ImageBuilder => (is => 'ro', isa => AppStream_ImageBuilder);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageBuilder' => {
                                   'class' => 'Paws::AppStream::ImageBuilder',
                                   'type' => 'AppStream_ImageBuilder'
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

Paws::AppStream::StopImageBuilderResult

=head1 ATTRIBUTES


=head2 ImageBuilder => AppStream_ImageBuilder

Information about the image builder.


=head2 _request_id => Str


=cut

1;